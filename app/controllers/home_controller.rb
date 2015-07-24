class HomeController < ApplicationController
def index
  @photos = Photo.all
  @profiles = Profile.all
end
end
