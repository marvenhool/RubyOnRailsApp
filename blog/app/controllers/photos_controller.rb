class PhotosController < ApplicationController

  def index
    @photo = Photo.all
    render ('photos/index')
  end

  def show
    @photo = Photo.all
    render ('photos/show')
  end

  def upload
    require 'fileutils' #ruby老版本可尝试改为 require 'ftools'
    tmp = params[:file_upload][:my_file].tempfile
    file = File.join("public", params[:file_upload][:my_file].original_filename)
    FileUtils.cp tmp.path, file
  end

end
