class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
  	add_column :users, :is_relative, :boolean
  end
end
