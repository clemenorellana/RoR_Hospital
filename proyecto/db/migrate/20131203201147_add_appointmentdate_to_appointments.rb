class AddAppointmentdateToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :appointmentdate, :date
  end
end
