class User < ApplicationRecord
  has_secure_password
  has_many :user_lines
  has_many :lines, through: :user_lines
  validates :email, confirmation: true
  validates :password, confirmation: true
end
