class WelcomeController < ApplicationController
  def index
  	@institute = Institute.all
  end
end
