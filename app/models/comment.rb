# This class represents comment in a system
class Comment < ApplicationRecord
  belongs_to :users_id
  belongs_to :post_id
end
