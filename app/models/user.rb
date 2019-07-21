class User < ApplicationRecord
  has_secure_password

  has_many :comments
  has_many :trips, through: :comments

  validates :name, presence: true
end
