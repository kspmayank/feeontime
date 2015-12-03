class InstituteController < ApplicationController
  def index
  end

  def new
    if session[:user_id]
    	@institute = Institute.new
    else
      redirect_to '/'
    end      
  end

  def create
    if session[:user_id]
    	p institute_params
  	  if @institue = Institute.create(institute_params)
  	  	# p @institute
  	  	# @institute.save
  	    redirect_to '/institute/'+@institute.id+'/edit#upload-images'
  	  else
  	    render 'new'
  	  end
    else
      redirect_to '/'
    end
  end

  def adminp
    if session[:user_id]
      @institute = Institute.all
    else
      redirect_to '/session/new'
    end
  end

  def edit
    if session[:user_id]
    	@institute = Institute.find(params[:id])
      p @gallery = Gallery.where(institute_id: params[:id]).all
      @event_imgs = Event.where(institute_id: params[:id]).all    
    else
      redirect_to '/'
    end
  end

  def show
  	p @institute = Institute.find(params[:id])
    p @gallery = Gallery.where(institute_id: params[:id]).all
    @event_imgs = Event.where(institute_id: params[:id]).all
  end

  def update
    if session[:user_id]
      	p '1'
      	p @institute = Institute.find(params[:id])
    	if @institute.update(institute_params)
      		redirect_to '/institute/'+@institute.id.to_s
      	else
      		render 'edit'
      	end
    else
      redirect_to '/'
    end    
  end

  private
  def institute_params
    params.require(:institute).permit(:name, :address, :info, :history, :admission, :fees, :events, :others, :logo, :cover, :category, :paylink)
  end

end
