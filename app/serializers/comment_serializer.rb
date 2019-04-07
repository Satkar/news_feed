class CommentSerializer < ActiveModel::Serializer
  attributes :type, :user, :content

  def type
    object.class.to_s
  end

  def user
    UserSerializer.new(object.user, { root: false } )
  end

end
