class Book < ApplicationRecord
  belongs_to :user
  belongs_to :book_genre, optional: true
end
