class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @photos = Place.find(params[:place_id])
    @place.photos.create(photos_params.merge(user: current_user))
    redirect_to place_path(@place)
  end


  private

  def photos_params
    params.require(:photos).permit(:caption)
  end
end