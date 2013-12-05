class UserMailer < ActionMailer::Base

  def registration_mail(user)
  	@user = user
		mail(:from => "RoR Hospital <ror.hospital@gmail.com>",
         :to => "#{@user.name} <#{@user.email}>",
         :subject => "Bienvenido!!")
	end

	def new_appointment_mail(appointment)  	
  	@appointment = appointment
  	@patient = @appointment.patient
  	@doctor = @appointment.doctor
		mail(:from => "RoR Hospital <ror.hospital@gmail.com>",
         :to => "#{@patient.name} <#{@patient.email}>",
         :subject => "Nueva Cita")
	end

end
