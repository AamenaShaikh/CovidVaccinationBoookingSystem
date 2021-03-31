class CreatePatientReports < ActiveRecord::Migration[6.1]
  def change
    create_table :patient_reports do |t|
    	t.string :certificate_file
    	t.bigint :uploaded_by

      t.timestamps
    end
  end
end
