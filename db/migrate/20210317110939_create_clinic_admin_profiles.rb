class CreateClinicAdminProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :clinic_admin_profiles do |t|
    	t.string :position
      t.timestamps
    end
  end
end
