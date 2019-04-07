class PostSerializer < ActiveModel::Serializer
  attributes :type, :content, :user
  has_many :comments

  # This is a custom attribute to get the class name of the object
  def type
    object.class.to_s
  end

  # This is a custom attribute to get user associated to the post
  def user
    UserSerializer.new(object.user, { root: false } )
  end
end
