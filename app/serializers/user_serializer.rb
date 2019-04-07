class UserSerializer < ActiveModel::Serializer
  attributes :type, :name

  # This is a custom attribute to get the class name of the object
  def type
    object.class.to_s
  end
end
