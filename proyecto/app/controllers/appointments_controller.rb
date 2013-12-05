class AppointmentsController < ApplicationController
  def new
  	@appointment=Appointment.new
  end

  def index
  	@appointments=Appointment.order("appointmentdate DESC")
   end

  def show
  	@appointment=Appointment.find(params[:id])
  end

  def edit
  	@appointment=Appointment.find(params[:id])
  end

   def update
   	@appointment=Appointment.find(params[:id])
   	if @appointment.update_attributes(params[:appointment])
   		redirect_to appointments_path
   	else
   		render :edit
   	end
   end

  def create
    @appointment=Appointment.new(params[:appointment])
    @appointment.state=false    
    if @appointment.save
      UserMail.new_appointment_mail(@appointment).deliver! 
    	redirect_to appointments_path
    else
    	render :new
    end
  end

def destroy
    @appointment=Appointment.find(params[:id])
    if @appointment.destroy
      redirect_to @appointments_path
    else
      render :show
    end
  end



end
