class BooksController < ApplicationController
  def index
    @book = Book.new
  end

  def new
  end
end
