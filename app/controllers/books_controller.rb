class BooksController < ApplicationController
  def create
    @book = Book.new
    @book.title = params[:book][:title]
    @book.writer = params[:book][:writer]
    @book.content = params[:book][:content]
    @book.save
    redirect_to '/'
  end

  def index
    @books = Book.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
  end

  def destory
  end
  
  private
  
  def set_book
    @book = Book.find(params[:id])
  end
  
  def book_params
    params.require(:book).permit(:title, :writer, :content)
  end
end
