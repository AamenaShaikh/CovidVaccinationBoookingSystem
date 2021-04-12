class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
    	t.integer :user_id
    	t.string :street
    	t.string :city
    	t.string :state
    	t.string :country
    	t.integer :pincode
    	t.float :latitude
    	t.float :longitude
    	t.references :addressable, polymorphic: true

      t.timestamps
    end
  end
end
