# This class represents post in a system
class Post < ApplicationRecord
  PER_PAGE = 50

  belongs_to :user
  has_many :comments

  # This is a default scope on the Post to get recently created record at the top
  default_scope { order('created_at desc') }

  # Fetch posts with user, comments and user associated with the comments
  def self.fetch_records(page_number=0)
    start_at = page_number.to_i * PER_PAGE
    includes(:user, comments: [:user]).limit(PER_PAGE).offset(start_at)
  end
end
