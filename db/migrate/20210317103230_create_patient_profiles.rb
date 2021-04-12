class CreatePatientProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :patient_profiles do |t|
    	t.string :id_proof
    	t.boolean :having_comorbidities
    	t.integer :status
    	
      t.timestamps
    end
  end
end
