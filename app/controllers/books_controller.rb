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
    book.user_id = current_user.id
    book.save
    redirect_to book_path(book.id)
  end

  def show
    @book_new = Book.new
    @book = Book.find(params[:id])
    @user = User.find(@book.user.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end 

end
