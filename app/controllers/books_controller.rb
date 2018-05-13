class BooksController < ApplicationController
before_action :set_book, only: [:show, :edit, :update, :destroy]
  def title
  end
  
  
  def create
    @book = Book.new
    @book.title = params[:book][:title]
    @book.writer = params[:book][:writer]
    @book.content = params[:book][:content]
    @book.save
    redirect_to books_path
  end

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def update
    @book.title = params[:book][:title]
    @book.writer = params[:book][:writer]
    @book.content = params[:book][:content]
    @book.save
    redirect_to book_path
  end

  def destroy
  @book.destroy
  redirect_to books_path
  end
  
  private
  
  def set_book
    @book = Book.find(params[:id])
    @books = Book.all
  end
  
  def book_params
    params.require(:book).permit(:title, :writer, :content)
  end
end
