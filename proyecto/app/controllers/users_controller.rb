class UsersController < ApplicationController
	layout 'login'


def new
	@user=User.new
end


def create
@user=User.new(params[:user])
if @user.save
		UserMailer.registration_mail(@user).deliver!
		redirect_to home_page_path
	else
		render :new
	end
end

def index
@users=User.all
end

def edit
	@user=User.find(params[:id])
end

def update
	@user=User.find(params[:id])
	if @user.update_attributes(params[:user])
		redirect_to home_page_path
	else
		render :edit
	end
end


def show
@user=User.find(params[:id])

end


def destroy
@user=User.find(params[:id])
	if @user.destroy
		redirect_to "/users"
	else
		render :show
	end
end	

def account


end
end



