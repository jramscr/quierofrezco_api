class OfferSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  has_many :products
end
