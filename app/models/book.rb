class Book < ApplicationRecord
  belongs_to :user
  belongs_to :book_genre, optional: true
  has_many :comments

  mount_uploader :image, ImageUploader
end
