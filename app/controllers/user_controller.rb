class UserController < ApplicationController
  def index
  end

  def new
  	if session[:user_id]
  		p 'success'
  	else
  		redirect_to '/'
  	end
  end

  def create
  	if session[:user_id]
  		@user = User.new(username: params[:user][:username])
  		@user.password = params[:user][:password]
  		@user.save!
  	else
  		redirect_to '/'
  end
end
