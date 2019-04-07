# This class represents post in a system
class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
end
