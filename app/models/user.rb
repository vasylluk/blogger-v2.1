class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :nickname, :password, :email, presence: true
  validates :nickname, length: { in: 5..15 }
  validates :nickname, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :postcomments
end
