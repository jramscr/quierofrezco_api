class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password
  has_many :products
  has_many :offers
end
