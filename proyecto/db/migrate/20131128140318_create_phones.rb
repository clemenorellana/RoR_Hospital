class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :number
      t.string :phonetype
      t.references :doctor

      t.timestamps
    end
    add_index :phones, :doctor_id
  end
end
