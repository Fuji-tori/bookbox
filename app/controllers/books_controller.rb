class BooksController < ApplicationController
  before_action :set_book, except: [:index,:new,:get_genre_children,:get_genre_grandchildren]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
    @book_genre = BookGenre.where(ancestry: nil)
  end
  
  def get_genre_children
    @genre_children = BookGenre.find("#{params[:parent_name]}").children
  end

  def get_genre_grandchildren
    @genre_grandchildren = BookGenre.find("#{params[:child_id]}").children
  end

  private

  def book_params
    params.require(:book).permit(:bookname, :author, :publication, :price, :synopsis, :review, :book_genre_id).merge(user_id: current_user.id)
  end

  def set_book
    @book = Book.find(params[:id])
  end

end
