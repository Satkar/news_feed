class UserSerializer < ActiveModel::Serializer
  attributes :type, :name

  def type
    object.class.to_s
  end
end
