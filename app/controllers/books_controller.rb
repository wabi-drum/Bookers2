class BooksController < ApplicationController
  def index
    @book = Book.new
    @user = current_user
  end

  def new
  end
end
