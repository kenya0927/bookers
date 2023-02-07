class BooksController < ApplicationController
  def new
  end

  def index
     @book =Book.new
  end

  def show
  end

  def edit
  end
  
  def cretate
    book = Book.new(book_params)
    
    book.save
  end
  
  
  private
  
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
