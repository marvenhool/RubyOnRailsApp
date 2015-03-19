class PhotosController < ApplicationController
  def index
    @photo = Photo.all
    render ('photos/index')
  end

  def success
  end

  def show
    @photo = Photo.find(params[:id])
    render ('photos/show')
  end

  def upload
    require 'fileutils' #ruby老版本可尝试改为 require 'ftools'
    tmp = params[:file_upload][:myfile]
    file = File.join("public/upload", params[:file_upload][:myfile].original_filename)
    FileUtils.cp tmp.path, file
    save_upload_log(params[:file_upload][:myfile].original_filename, tmp.path,file)
    render('photos/success')
  end

  def save_upload_log(fileName,original_path, file)
    @photo = Photo.new()
    @photo.update_attributes(:name=>fileName ,:path => original_path,:savepath=> file)  #active_recordの属性を設置
    @photo.save
  end

end
