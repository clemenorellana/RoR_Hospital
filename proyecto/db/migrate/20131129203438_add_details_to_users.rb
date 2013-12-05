class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :level, :string
    add_column :users, :name, :string
  end
end
