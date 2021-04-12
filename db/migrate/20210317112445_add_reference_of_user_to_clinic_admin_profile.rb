class AddReferenceOfUserToClinicAdminProfile < ActiveRecord::Migration[6.1]
  def change
  	add_reference :clinic_admin_profiles, :user
  end
end
