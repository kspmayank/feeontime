class SessionController < ApplicationController
  def index
  end

  def new
  end

  def login
  	@user = User.find_by_username(params[:username])
  	if @user.password == params[:password]
  		session[:user_id] = @user.id
		redirect_to '/user'
  	else
  		redirect_to home_url
  	end
  end

end
