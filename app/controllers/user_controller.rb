class UserController < ApplicationController
  def index
  end

  def new
  end

  def create
  	@user = User.new(username: params[:user][:username])
  	@user.password = params[:user][:password]
  	@user.save!
  end
end
