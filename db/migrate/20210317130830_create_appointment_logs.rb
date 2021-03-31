class CreateAppointmentLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :appointment_logs do |t|
    	t.string :action_performed
    	t.bigint :modified_by
  
      t.timestamps
    end
  end
end
