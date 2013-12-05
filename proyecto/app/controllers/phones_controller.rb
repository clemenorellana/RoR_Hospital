class PhonesController < ApplicationController
  def new
  	@doctor=Doctor.find(params[:doctor_id])
  end

  def create
  	@doctor=Doctor.find(params[:doctor_id])
  	@phone= @doctor.phones.build(params[:phone])
  	if @phone.save
  		redirect_to @doctor
    else
      redirect_to @doctor
  	end
  end

def edit

  @phone=Phone.find(params[:id])
end

def update
  @phone=Phone.find(params[:id])
  if @phone.update_attributes(params[:phone])
    redirect_to @phone.doctor
  else
    render :edit
  end
end
  
end
