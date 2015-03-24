class WelcomeController < ApplicationController
  def index
  end
  def aboutme
  end
  def test
    @article=Article.all
    if @article.size > 0
      render
    else
      render json: 'no data'
    end
  end
end
