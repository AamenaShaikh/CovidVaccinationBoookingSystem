class RemoveReferenceOfUser < ActiveRecord::Migration[6.1]
  def change
  	remove_reference :comorbidities, :user
  	remove_reference :clinics, :user
  end
end
