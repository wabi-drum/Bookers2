class BooksController < ApplicationController
  def index
    @book = Book.new
    @user = current_user
    @books = Book.all 
  end

  def new
  end
end
