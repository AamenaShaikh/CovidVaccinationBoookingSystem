class AddColumnToAppointmentLog < ActiveRecord::Migration[6.1]
  def change
  	add_column :appointment_logs, :status, :integer 
  end
end