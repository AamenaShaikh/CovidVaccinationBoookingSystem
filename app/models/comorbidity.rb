class Comorbidity < ApplicationRecord
	belongs_to :patient, class_name: "User", foreign_key: "patient_id"
	belongs_to :appointment, optional: true
	has_one_attached :image
end
