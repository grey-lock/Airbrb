class ListingSerializer < ActiveModel::Serializer
  attributes :id, :host_id, :booking_id, :title
end
