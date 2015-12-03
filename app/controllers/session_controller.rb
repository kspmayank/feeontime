class SessionController < ApplicationController
  def index
  end

  def new
  end

  def login
  	if @user = User.find_by_username(params[:username])
    	if @user.password == params[:password]
    		session[:user_id] = @user.id
  		redirect_to '/fot-admin'
    	else
    		redirect_to home_url
    	end
  else
    redirect_to home_url
  end
  end

end
