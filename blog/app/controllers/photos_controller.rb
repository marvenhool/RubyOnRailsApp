class PhotosController < ApplicationController

  def index
    @photo = Photo.all
    render ('photos/index')
  end

  def show

    @photo = Photo.all
    render ('photos/show')
  end

end
