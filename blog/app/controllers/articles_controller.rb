class ArticlesController < ApplicationController

  #http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  #——————————————new the articles——————————start——————————
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
  #——————————————new the articles——————————end——————————

  #——————————————edit the articles——————————start——————————

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
  #——————————————edit the articles——————————end——————————


  #——————————————destroy the articles——————————start——————————
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end
  #——————————————destroy the articles——————————end——————————


  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end