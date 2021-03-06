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
    @new_photo = Photo.new
    @new_photo.source = params["the_source"]
    @new_photo.caption = params["the_caption"]
    @new_photo.save
  end

  def destroy
    @this_photo = Photo.find_by({:id => params["id"]})
    @this_photo.destroy
  end

  def edit_form
    @this_photo = Photo.find_by({:id => params["id"]})
  end

  def update_row
    update_photo = Photo.find_by({:id => params["id"]})
    update_photo.source = params["the_source"]
    update_photo.caption = params["the_caption"]
    update_photo.save

    @updated_photo = Photo.find_by({:id => params["id"]})
  end

  def random_photo
    photo_count = Photo.count - 1
    rand_id = rand(0..photo_count)

    @rand_photo = Photo.all[rand_id]
  end
end
