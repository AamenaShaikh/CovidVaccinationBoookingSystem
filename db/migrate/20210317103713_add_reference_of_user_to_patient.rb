class AddReferenceOfUserToPatient < ActiveRecord::Migration[6.1]
  def change
  	add_reference :patient_profiles, :user
  end
end
