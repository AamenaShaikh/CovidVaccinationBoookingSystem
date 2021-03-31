class DoctorSchedule < ApplicationRecord
	belongs_to :doctor, class_name: "User", foreign_key: "doctor_id"
	belongs_to :clinic, optional: true
end