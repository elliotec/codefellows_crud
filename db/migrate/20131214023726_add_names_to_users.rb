class AddNamesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_index :users, :firstname, unique: true
  end
end
