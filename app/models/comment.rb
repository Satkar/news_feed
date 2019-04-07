# This class represents comment in a system
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
end
