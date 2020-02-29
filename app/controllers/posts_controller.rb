class PostsController < ApplicationController
  before_action :set_post_from_id, only: [:show, :edit, :update]
  before_action :set_post, only: [:new]

  def new
  end

  def Create
    @post = Post.new(post_params)
    
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def show
  end
  
  def edit
  end
  
  def update

    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def set_post
    @post = Post.new
  end

  def set_post_from_id
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :category, :content)
  end
end
