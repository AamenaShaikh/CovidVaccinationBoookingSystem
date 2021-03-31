class PatientProfile < ApplicationRecord
	enum status: { registered: 1, scheduled: 2, scheduled_not: 3, 
		verified: 4, partially_vaccinated: 5, vaccinated: 6 }
	belongs_to :user
end