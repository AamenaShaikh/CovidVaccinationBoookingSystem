class AddRefToAppointmentOfPatientAndDoctor < ActiveRecord::Migration[6.1]
  def change
  	add_reference :appointments, :patient, foreign_key: { to_table: :users }
  	add_reference :appointments, :doctor, foreign_key: { to_table: :users }
  end
end
