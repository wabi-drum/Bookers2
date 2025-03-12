class BooksController < ApplicationController
  def index
    @book = Book.new
    @user = current_user
    @books = Book.all 
  end

  def new
  end

  def create 
    book = Book.new(book_params)
    book.save 
    redirect_to book_path([:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end 

end
