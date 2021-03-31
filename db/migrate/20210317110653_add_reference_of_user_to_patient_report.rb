class AddReferenceOfUserToPatientReport < ActiveRecord::Migration[6.1]
  def change
  	add_reference :patient_reports, :user
  end
end