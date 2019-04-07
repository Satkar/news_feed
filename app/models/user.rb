# This class represents a user in a system
class User < ApplicationRecord
  has_many :posts
  has_many :comments
end
