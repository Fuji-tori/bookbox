class AddBookGenreRefToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :book_genre, foreign_key: true
  end
end
