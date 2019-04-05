class User < ApplicationRecord
  has_secure_password
  validate :name, uniqueness: true
  validate :password, presence: true
end
