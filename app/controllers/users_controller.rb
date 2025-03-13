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
    
  end
end
