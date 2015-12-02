class InstituteController < ApplicationController
  def index
  end

  def new
  	@institute = Institute.new
  end

  def create
  	p institute_params
	  if @institue = Institute.create(institute_params)
	  	# p @institute
	  	# @institute.save
	    redirect_to @institute
	  else
	    render 'new'
	  end
  end

  def edit
  	@institute = Institute.find(params[:id])
  end

  def show
  	p @institute = Institute.find(params[:id])
  end

  def update
  	p '1'
  	p @institute = Institute.find(params[:id])
	if @institute.update(institute_params)
  		redirect_to '/institute/#{params[:id]}'
  	else
  		render 'edit'
  	end
  end

  private
  def institute_params
    params.require(:institute).permit(:name, :address, :info, :history, :admission, :fees, :events, :others, :logo, :cover)
  end

end
