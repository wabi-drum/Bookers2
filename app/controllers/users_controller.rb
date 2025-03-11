class UsersController < ApplicationController
  def index
    @book = Book.new
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def edit
  end
end
