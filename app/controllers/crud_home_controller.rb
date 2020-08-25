class CrudHomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def write

  end

  def create
    post = Post.new
    post.title = params[:title]
    post.description = params[:description]
    post.save

    redirect_to '/index'
  end
end
