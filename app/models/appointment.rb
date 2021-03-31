class Appointment < ApplicationRecord
	belongs_to :user
	belongs_to :clinic
	has_many :appointment_logs, foreign_key: 'appointment_id'
end
