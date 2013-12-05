class RemoveBirthdayFromPatients < ActiveRecord::Migration
  def up
    remove_column :patients, :birthday
  end

  def down
    add_column :patients, :birthday, :string
  end
end
