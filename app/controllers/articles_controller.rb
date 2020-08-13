class ArticlesController < ApplicationController
  # Show action VIEW
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  # Create
  def create
    @article = Article.new(params.require(:article).permit(:title, :text))
    @article.save
    redirect_to @article
  end
end
