class User < ApplicationRecord
  has_secure_password

  validates :username, length: { minimum: 5, maximum: 12 }, uniqueness: true, presence: true
  validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }, presence: true
  validates :password, length: { minimum: 8, maximum: 100 }

  has_many :posts
  has_many :comments
  has_many :likes
  has_many :liked_posts, through: :likes, source: :post

end
