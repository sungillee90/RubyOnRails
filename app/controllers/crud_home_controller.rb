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

  def modify
    # post = Post.find(params[:post_id])
    # post.title = params[:title]
    # post.description = params[:description]
    # post.save

    # redirect_to '/'
  end

  def delete
    post = Post.destroy(params[:id])

    redirect_to :back
  end
end
