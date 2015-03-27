class JsonDataController < ApplicationController
  def article
    @article = Article.all
    render json: @article
  end
  def photo
    @photo=Photo.all
    render xml: @photo
  end
end
