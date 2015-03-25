class JsonDataController < ApplicationController
  respond_to :html, :xml, :json
  def article
    @article = Article.all
    respond_with @article
  end
end
