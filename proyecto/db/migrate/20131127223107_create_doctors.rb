class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.text :address
      t.string :email
      t.string :speciality

      t.timestamps
    end
  end
end
