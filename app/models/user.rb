class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  validates :password, presence: true
end
