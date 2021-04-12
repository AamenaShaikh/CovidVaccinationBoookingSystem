class CreateClincsDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :clinics_doctors do |t|
			t.belongs_to :clinic
			t.references :doctor, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
