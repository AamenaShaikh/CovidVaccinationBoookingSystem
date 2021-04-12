class AddReferenceOfClinicsAdminToClinic < ActiveRecord::Migration[6.1]
  def change
  	add_reference :clinics, :user
  end
end
