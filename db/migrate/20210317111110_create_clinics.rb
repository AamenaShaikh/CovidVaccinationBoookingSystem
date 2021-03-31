class CreateClinics < ActiveRecord::Migration[6.1]
  def change
    create_table :clinics do |t|
    	t.string :name
    	t.string :phone_number
    	t.string :email
    	t.time :start_time
    	t.time :end_time
    	
      t.timestamps
    end
  end
end
