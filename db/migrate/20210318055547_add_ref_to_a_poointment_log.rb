class AddRefToAPoointmentLog < ActiveRecord::Migration[6.1]
  def change
  	add_reference :appointment_logs, :modified_by, foreign_key: { to_table: :users }
  end
end
