class HomehospitalController < ApplicationController
  def index
  end

  def reports

  	if not current_user.level=="administrador"
  		redirect_to home_page_path
  	end

end

def ranking
	if not current_user.level=="administrador"
  		redirect_to home_page_path
  	else
  		@doctors = Doctor.all
      @rankings = Array.new
      @doctors.each do |doctor|
        ranking = Ranking.new
        ranking.id = doctor.id
        ranking.name = doctor.name
        ranking.speciality = doctor.speciality 
        ranking.appointments = doctor.appointments.where(state: true).count
        ranking.bill = doctor.appointments.where(state: true).sum(:bill)
        @rankings.push(ranking)
      end
      
      @rankings.sort! { |a,b| b.appointments <=> a.appointments }
      
      
  	end

end

end
