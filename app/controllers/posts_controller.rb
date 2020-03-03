require 'pry'
class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.new(post_params)
    if @post.valid?
      Post.find(params[:id]).update(post_params)
      redirect_to post_path(params[:id])
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
