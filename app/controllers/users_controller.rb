class UsersController < ApplicationController
  def index
    @book = Book.new
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all 
  end

  def edit
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to user_path(user.id)
    end
  end
  
end
