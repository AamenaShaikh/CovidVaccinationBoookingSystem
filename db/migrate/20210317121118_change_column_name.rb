class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
  	rename_column :patient_reports, :patient_id, :user_id
  end
end
