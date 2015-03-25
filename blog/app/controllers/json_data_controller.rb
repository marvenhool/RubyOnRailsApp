class JsonDataController < ApplicationController
  respond_to :html, :xml, :json
  def article
      @article = Article.all
      respond_with @article
  end

  def photo
    @photo=Photo.all
    respond_with @photo
  end
end
