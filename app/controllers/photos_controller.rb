class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @this_photo = Photo.find_by({:id => params["id"]})
  end

  def new_form

  end

  def create_row
    p = Photo.new
    p.source =
    p.caption = photo_hash[:caption]
    p.save
  end
end
