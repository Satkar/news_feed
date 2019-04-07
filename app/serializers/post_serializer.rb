class PostSerializer < ActiveModel::Serializer
  attributes :type, :content, :user
  has_many :comments
  def type
    object.class.to_s
  end

  def user
    UserSerializer.new(object.user, { root: false } )
  end
end
