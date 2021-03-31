class AddRefOfUser < ActiveRecord::Migration[6.1]
  def change
  	add_reference :comorbidities, :patient, foreign_key: { to_table: :users }
  	add_reference :clinics, :clinic_admin, foreign_key: { to_table: :users }
  	add_reference :doctor_schedules, :doctor, foreign_key: { to_table: :users }
  end
end
