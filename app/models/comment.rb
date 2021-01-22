class Comment < ApplicationRecord
  
  belongs_to :user
  belongs_to :book

  # validates :text, presence: true,length: { maximum: 1000 }

end