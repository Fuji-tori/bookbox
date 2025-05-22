class Book < ApplicationRecord
  belongs_to :user
  belongs_to :book_genre, optional: true
  has_many :comments
  
  mount_uploader :image, ImageUploader
  # validates :image, :book_genre_id, presence: {message: "を選択してください"}
  # validates :book_name, :author, :publication, presence: true, length: { maximum: 100 }
  # validates :synopsis, :review, presence: true,length: { maximum: 1000 }
  # validates :price, presence: true,numericality: { only_integer: true,greater_than: 0, less_than: 10000000}
end