class AppointmentLog < ApplicationRecord
	belongs_to :appointments
	belongs_to :user
end
