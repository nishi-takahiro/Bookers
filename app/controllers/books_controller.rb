class BooksController < ApplicationController
  def new
   @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
     redirect_to '/books/:id'
   else
     render :new
  end
end

  def index
    @books = Book.all
  end

  def show
   
  end

  def edit
  end
  
  def destroy
    book = Book.find(params[:id])
    book.desroy
    redirect_to "/books"
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end