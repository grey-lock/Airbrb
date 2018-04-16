class BookingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :listing_id, :check_in, :check_out, :status
end
