class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :listing_id, :user_id, :rating, :body
end
