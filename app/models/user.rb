class User < ApplicationRecord
  validates :full_name, presence: true, length: { maximum: 100 }
  validates :username, presence:true, length: { maximum: 100 }
  validates :email, presence:true, length: { maximum: 100 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 5 }
  has_many :posts
  has_many :profiles
  has_many :favorites, dependent: :destroy
end
