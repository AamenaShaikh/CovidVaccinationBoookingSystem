class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
    	t.date :date
    	t.time :start_time
    	t.time :end_time
    	t.integer :vaccine_name
    	t.integer :status
    	t.integer :dose
    	t.integer :duration
    	t.bigint :created_by

      t.timestamps
    end
  end
end
