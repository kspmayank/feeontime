class GalleryController < ApplicationController
  def new
  end

  def show
  end

  def create
  	p @photos = params[:gallery][:gallery]
  	for i in 0...@photos.length do
  		@gallery = Gallery.create(photo: @photos[i], institute_id: params[:institute_id])
  	end
  	# p 'kar raha h ya nhi??'
  	# p @gallery.institute_id = params[:institute_id]
  	redirect_to '/institute/'+params[:institute_id].to_s+'/edit'
  end


  # private
  # def gallery_params
  #   params.require(:gallery).permit(:gallery)
  # end

end
