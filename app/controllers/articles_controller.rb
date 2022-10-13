class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    render json: @articles
  end 

  def show
    @article = Article.find_by(id: params[:id])
    render json: @article
  end

  def create
    @article = Article.create(
      title: params[:title],
      content: params[:content],
      author: params[:author],
      category: params[:category],
      published_at: params[:published_at]
      )
    @article.save
    render json: @article
  end

  def update
    render :error
  end

  def destroy
    render :error
  end
end
