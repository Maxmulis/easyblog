class ArticlesController < ApplicationController
  def index
    @articles = Article.includes(:comments).order(updated_at: :desc)
  end

  def show
    @article = Article.find(params[:id])
    @comments = @article.comments
    @comment = Comment.new
  end

  def new
  end

  def create
  end
end
