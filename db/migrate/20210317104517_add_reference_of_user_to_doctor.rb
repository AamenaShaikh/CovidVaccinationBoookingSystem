class AddReferenceOfUserToDoctor < ActiveRecord::Migration[6.1]
  def change
  	add_reference :doctor_profiles, :user
  end
end
