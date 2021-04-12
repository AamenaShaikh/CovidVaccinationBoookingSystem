class CreateDoctorSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :doctor_schedules do |t|
    	t.date :date
    	t.time :start_time
    	t.time :end_time
    	t.integer :status
    	t.bigint :created_by 
      t.timestamps
    end
  end
end
