class AddRefToAppointmentLogOfAppointment < ActiveRecord::Migration[6.1]
  def change
  	add_reference :appointment_logs, :appointment
  end
end
