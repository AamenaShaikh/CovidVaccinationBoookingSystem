class RemoveReferenceOfClinicAdminToClinic < ActiveRecord::Migration[6.1]
  def change
  	remove_reference :clinics, :clinic_admin_profile
  end
end
