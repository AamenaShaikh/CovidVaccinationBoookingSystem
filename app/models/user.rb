class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #attr_accessor :date_of_birth
  #after_create :set_doctor_role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  rolify
  has_one :address, as: :addressable
  has_one :patient_report, foreign_key: 'patient_id'
  has_one :comorbidity, foreign_key: 'patient_id'
  has_many :patient_appointments, class_name: 'appointment', foreign_key: 'patient_id'
  has_many :doctor_appointments, class_name: 'appointment', foreign_key: 'doctor_id'
  has_many :doctor_schedule, foreign_key: 'doctor_id'
  has_many :appointment_logs, foreign_key: 'modified_by_id'
  has_and_belongs_to_many :clinics, join_table: 'clinics_doctors', foreign_key: 'doctor_id'
  has_one :patient_profile
  has_one :doctor_profile
  has_one :clinic_admin_profile
  belongs_to :parent, class_name: 'user', foreign_key: 'parent_id', optional: true
  has_many :relatives, class_name: 'User', foreign_key: 'parent_id'
  #validates :email, :presence => true, if: -> {is_relative == false}
  validates_length_of :phone_number, :maximum => 10
  validates_length_of :aadhar_number, :maximum => 10
  validates_date :date_of_birth, before: lambda { 4.years.ago },
  before_message: "must be at least 18 years old"

  def patient?
    type == 'Patient'
  end

  def email_required?
    if is_relative == true
      return false
    else
      return true
    end
  end

  def password_required?
    if is_relative == true
      return false
    else
      return true
    end
  end

  def doctor?
    type == 'Doctor'
  end

  def clinic_admin?
    type == 'ClinicAdmin'
  end
end