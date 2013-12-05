class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :appointmentdate
      t.text :description
      t.boolean :state
      t.text :sintomas
      t.text :diagnostic
      t.string :bill
      t.references :patient
      t.references :doctor

      t.timestamps
    end
    add_index :appointments, :patient_id
    add_index :appointments, :doctor_id
  end
end
