class BooksController < ApplicationController
  def index
    @user = current_user
  end
  def show
    @books = Book.all
    
  end

  def new
    @books = Book.new
  end

  def create
    @books = Book.new(book_params)
    if@books.save
      redirect_to books_show_path
    else
      render 'new'
    end
  end



  private
  def book_params
    params.require(:book).permit(:title, :body).merge(user_id: current_user.id)
  end
end
