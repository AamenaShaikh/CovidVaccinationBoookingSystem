class CreateComorbidities < ActiveRecord::Migration[6.1]
  def change
    create_table :comorbidities do |t|
    	t.text :disease_description
    	t.string :report_file
    	t.text :suggestion_by_doctor
      t.timestamps
    end
  end
end
