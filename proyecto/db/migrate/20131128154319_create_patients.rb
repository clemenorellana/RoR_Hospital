class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :birthday
      t.text :leyend
      t.boolean :live

      t.timestamps
    end
  end
end
