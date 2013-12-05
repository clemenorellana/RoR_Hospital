class DoctorsController < ApplicationController
  def index
    @doctors=Doctor.find(:all, :order => "LOWER(name)") 
  end

  def new
  	@doctor= Doctor.new
  end

  def create
  	@doctor=Doctor.new(params[:doctor])
  	if @doctor.save
  		redirect_to doctors_path
  	else
  		render :new
  	end
  end

  def show
  	@doctor= Doctor.find(params[:id])
  end

  def edit
  	@doctor= Doctor.find(params[:id])
  end

  def update
  	@doctor=Doctor.find(params[:id])

  	if @doctor.update_attributes(params[:doctor])
  		redirect_to @doctor
  	else
  		render :edit
  	end
  end

  def destroy
    @doctor=Doctor.find(params[:id])
    if @doctor.destroy
      redirect_to doctors_path
    else
      render :show
  end
end

def appointments
  @doctor=Doctor.find(params[:id])
  
  end

def citas
  @doctor=Doctor.find(params[:doctor_id])
  @appointment=@doctor.appointments.find(params[:appointment_id])
  @appointment.state=true
  @appointment.save
end

end
