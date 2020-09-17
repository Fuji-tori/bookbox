class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, :true
  validates :password, presence: true, length: { minimum: 7},
                format: {
                  with: /\A[a-z0-9]+\z/i,
                  message: "は半角英数字で入力して下さい"
                }
  validates :email, presence: true,
                format: {
                  with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
                  message: "は正しいメールアドレスを入力して下さい"
                }
  
  mount_uploader :avatar, AvatarUploader
         
  has_many :books
  has_many :comments
end
