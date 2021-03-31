class CreateClinicAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :clinic_admins do |t|

      t.timestamps
    end
  end
end
