class User < ApplicationRecord
  validates :user_name, presence: true, length: { minimum: 4, maximum: 20 }
  validates :email, presence: true
  validates :password, presence: true

  has_many :posts
  has_many :comments
end
