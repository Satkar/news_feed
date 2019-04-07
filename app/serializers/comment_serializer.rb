class CommentSerializer < ActiveModel::Serializer
  attributes :type, :user, :content

  # This is a custom attribute to get the class name of the object
  def type
    object.class.to_s
  end

  # This is a custom attribute to get user associated to the comment
  def user
    UserSerializer.new(object.user, { root: false } )
  end

end
