class AuthorsController < ApplicationController
  before_action :set_author, only: [:new]
  before_action :set_author_from_id, only: [:show, :edit, :update]
  def show
  end
  
  def new
  end
  
  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @author.update(author_params)
      redirect_to author_path(@author)
    else
      render :edit
    end
  end
  
  private
  
  def set_author
    @author = Author.new
  end
  
  def set_author_from_id
    @author = Author.find(params[:id])
  end

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
