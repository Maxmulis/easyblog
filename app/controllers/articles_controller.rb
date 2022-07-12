class ArticlesController < ApplicationController
  def index
    @articles = Article.includes(:comments).order(updated_at: :desc)
  end

  def show
  end

  def new
  end

  def create
  end
end
