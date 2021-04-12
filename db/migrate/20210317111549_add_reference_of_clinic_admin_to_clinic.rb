class AddReferenceOfClinicAdminToClinic < ActiveRecord::Migration[6.1]
  def change
  	add_reference :clinic_admin_profiles, :clinic
  	add_reference :clinics, :clinic_admin_profile
  end
end
