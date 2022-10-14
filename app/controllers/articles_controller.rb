class ArticlesController < ApplicationController

  def index
    @articles = Article.all.order("published_at desc")
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
    render status: :created, json: @article if @article.valid?
  end

  def update
    render status: :method_not_allowed
  end

  def destroy
    render status: :method_not_allowed
  end
end
