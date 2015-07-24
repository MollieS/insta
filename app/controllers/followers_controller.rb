class FollowersController < ApplicationController

  def create
     @profile = Profile.find(params[:profile_id])
     @profile.followers.create     
     render json: {new_followers_count: @profile.followers.count}
  end
end
