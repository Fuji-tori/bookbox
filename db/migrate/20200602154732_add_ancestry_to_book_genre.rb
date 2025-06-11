class AddAncestryToBookGenre < ActiveRecord::Migration[5.2]
  def change
    add_index :book_genres, :ancestry
  end
end