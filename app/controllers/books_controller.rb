class BooksController < ApplicationController
 
  def index
  @books = Book.all
  @book = Book.new
  end
  
  def new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)  
  end
  
  def update
    flash[:notice] = "Book was successfully updated." 
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)  
  end

  def show
    @book = Book.find(params[:id])  
  end

  def edit
    @book = Book.find(params[:id])  
  end
  
  def destroy
    flash[:notice] = "Book was successfully destroyed." 
    book = Book.find(params[:id])  
    book.destroy
    redirect_to '/books'
  end
 
  
  private
  
  def book_params
  params.require(:book).permit(:title, :body)
  end

end
