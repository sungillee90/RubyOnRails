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

  def edit
    @post = Post.find(params[:post_id])
    # post.title = params[:title]
    # post.description = params[:description]
    # post.save

    # redirect_to '/'
  end

  def update # similar to Create
    post = Post.find(params[:post_id])
    post.title = params[:title]
    post.description = params[:description]
    post.save

    redirect_to '/index'
  end

  def delete
    Post.destroy(params[:post_id])

    redirect_to '/index'
  end
end
