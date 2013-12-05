class RemoveAppointmentdateFromAppointments < ActiveRecord::Migration
  def up
    remove_column :appointments, :appointmentdate
  end

  def down
    add_column :appointments, :appointmentdate, :string
  end
end
