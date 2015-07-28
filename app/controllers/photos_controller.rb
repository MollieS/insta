class PhotosController < ApplicationController
  def new
  end
  
  def create
    @photo = Photo.create(photo_params)
    @photo.user_id = current_user.id
    @photo.save
    if @photo.save
      redirect_to user_profile_index_path(current_user)
    else 
      flash[:notice] = 'please upload a photo'
      redirect_to new_user_photo_path(current_user)
    end
  end

  def show
    @photo = Photo.find_by(id: params[:id])
    @comments = Comment.where(photo_id: @photo.id)
    @profile = Profile.find_by(id: @photo.user_id)
  end

  def photo_params
    params.require(:photo).permit(:title, :location, :image)
  end
end
