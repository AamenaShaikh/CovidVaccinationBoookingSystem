class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
    	t.string :aadhar_number
    	t.string :phone_number
    	t.string :email
    	t.string :password
    	t.string :gender
    	t.string :first_name
    	t.string :last_name
    	t.integer :age
    	t.date :date_of_birth
      
      t.timestamps
    end
  end
end
