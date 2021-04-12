class AddReferenceOfUserToComorbidity < ActiveRecord::Migration[6.1]
  def change
  	add_reference :comorbidities, :user
  end
end
