# This class represents post in a system
class Post < ApplicationRecord
  belongs_to :users_id
  has_many :comments
end
