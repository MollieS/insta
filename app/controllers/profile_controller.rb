class ProfileController < ApplicationController
 def new
 end

 def create
   @profile = Profile.create(profile_params)
   @profile.user_id = current_user.id
   @profile.save
   redirect_to user_profile_index_path(current_user) 
 end

 def profile_params
   params.require(:profile).permit(:username, :name, :location, :bio, :image)
 end

 def index
   @profile = Profile.find_by(user_id: params[:user_id])
   @photos = Photo.where(user_id: @profile.user_id)
 end
end
