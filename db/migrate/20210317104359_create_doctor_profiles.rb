class CreateDoctorProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :doctor_profiles do |t|
    	t.integer :status
      t.timestamps
    end
  end
end
