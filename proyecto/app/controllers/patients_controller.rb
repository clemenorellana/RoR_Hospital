class PatientsController < ApplicationController
  def index
  	@patients=Patient.all
  end

  def new
  	@patient=Patient.new
  end

  def create
  	@patient=Patient.new(params[:patient])
  	if @patient.save
  		redirect_to patients_path
  	else
  		render :new
  	end
  end

  def edit
  	@patient=Patient.find(params[:id])

  end

  def update
  	@patient=Patient.find(params[:id])
  	if @patient.update_attributes(params[:patient])
  		redirect_to patients_path
  	else
  		render :edit
  	end
  end

  def show
  	@patient=Patient.find(params[:id])
  end

  def appointments
    @patient=Patient.find(params[:id])  
  end

  def citas
    @patient=Patient.find(params[:patient_id])
    @appointment=@patient.appointments.find(params[:appointment_id])
  
  end


end
