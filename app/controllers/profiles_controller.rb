class ProfilesController < ApplicationController
 def new
 end

 def create
   @profile = Profile.create(profile_params)
   @profile.user_id = current_user.id
   @profile.save
   redirect_to user_profile_path(current_user) 
 end

 def profile_params
   params.require(:profile).permit(:username, :name, :location, :bio, :image)
 end

 def show
   @profile = Profile.find_by(user_id: current_user.id)
   @photos = []
   @photos << Photo.find_by(user_id: current_user.id)
   p @photos
 end
end
