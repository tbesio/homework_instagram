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
    new_photo = Photo.new
    new_photo.source = params["the_source"]
    new_photo.caption = params["the_caption"]
    new_photo.save
  end

  def destroy
    @this_photo = Photo.find_by({:id => params["id"]})
  end
end
