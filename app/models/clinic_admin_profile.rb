class ClinicAdminProfile < ApplicationRecord
	has_one :clinic
	belongs_to :user
end