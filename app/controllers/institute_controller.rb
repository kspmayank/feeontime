class InstituteController < ApplicationController
  def index
  end

  def new
  	@institute = Institute.new
  end

  def create
	  @institue = Institute.new(institute_params)
	 
	  if @institute.save
	    redirect_to @institute
	  else
	    render 'new'
	  end
  end

  def edit
  end

  private
  def institute_params
    params.require(:institute).permit(:name, :address, :info, :history, :admission, :fees, :events, :others)
  end

end
