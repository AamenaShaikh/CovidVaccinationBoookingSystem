class Clinic < ApplicationRecord
	has_one :address, as: :addressable
	has_many :appointments, foreign_key: 'clinic_id'
	has_one :clinic_admin, class_name: 'user', foreign_key: 'clinic_admin_id'
	has_many :doctor_schedule, foreign_key: 'clinic_id'
	has_and_belongs_to_many :doctors, class_name: 'user', join_table: 'clinics_doctors'
end