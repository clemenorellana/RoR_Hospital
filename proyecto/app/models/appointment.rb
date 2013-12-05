
class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor
  attr_accessible :appointmentdate, 
  :bill, 
  :description, 
  :diagnostic, 
  :sintomas, 
  :state, 
  :doctor_id, 
  :patient_id
end
