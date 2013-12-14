class AddMoreNamesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lastname, :string
    add_index :users, :lastname, unique: true
  end
end
