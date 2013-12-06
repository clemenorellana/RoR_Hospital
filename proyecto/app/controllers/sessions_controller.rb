class SessionsController < ApplicationController
 layout 'login'
 skip_before_filter :authenticate
  def new

    
      @defaultuser=User.new
      @defaultuser.name= "hola"
      @defaultuser.password="rorhospital"
      @defaultuser.password_confirmation="rorhospital"
      @defaultuser.level= "administrador"
      @defaultuser.username="admin"
      @defaultuser.email="noreplay@gmail.com"
      @defaultuser.save

     

  	if session[:user_id]
  		redirect_to home_page_path
  	end
  end

  def create
  	@user=User.find_by_username(params[:username])
  	if @user && @user.authenticate(params[:password])
  		login
  		redirect_to home_page_path
  	else
  		flash[:notice]="User o password Invalido"
  		render :new
  	end
  end

  def destroy
  	reset_session
  	redirect_to root_path
  end

  def login
  	cookies.permanent.signed[:username]=@user.username
  	session[:user_id]=@user.id
  end
end
