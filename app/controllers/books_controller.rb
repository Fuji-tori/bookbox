class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.all
  end
  
end
