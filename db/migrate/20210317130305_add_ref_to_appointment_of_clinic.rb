class AddRefToAppointmentOfClinic < ActiveRecord::Migration[6.1]
  def change
  	add_reference :appointments, :clinic
  end
end
