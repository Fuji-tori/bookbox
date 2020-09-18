class Book < ApplicationRecord
  belongs_to :user
  belongs_to :book_genre, optional: true
  has_many :comments

  validates :item, presence: {message: "を選択してください"}

  validates :book_name, :author, :publication, presence: true, length: { maximum: 50 }

  validates :synopsis, :review, presence: true,length: { maximum: 1000 }

  validates :book_genre_id, presence: {message: "を選択してください"}
 
  validates :price, presence: true,numericality: { only_integer: true,greater_than: 1, less_than: 10000000}

  mount_uploader :image, ImageUploader
end
