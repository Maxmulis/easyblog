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
    @article = Article.new(article_params)
    @article.author = current_user
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
