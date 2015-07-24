class PhotosController < ApplicationController
  def new
  end
  
  def create
    @photo = Photo.create(photo_params)
    @photo.user_id = current_user.id
    @photo.save
    redirect_to user_profile_index_path(current_user)
  end

  def show
    @photo = Photo.find_by(id: params[:id])
    @comments = Comment.where(photo_id: @photo.id)
  end

  def photo_params
    params.require(:photo).permit(:title, :location, :image)
  end
end
