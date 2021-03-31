class AddReferenceOfUser < ActiveRecord::Migration[6.1]
  def change
  	add_reference :patient_reports, :patient, foreign_key: { to_table: :users }
  end
end
