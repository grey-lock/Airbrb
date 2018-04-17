class ListingSerializer < ActiveModel::Serializer
  has_many :reviews
  attributes :id,
      :host_id,
      :title,
      :description,
      :address,
      :lat,
      :lng,
      :price,
      :prop_type,
      :room_type,
      :num_guests,
      :bedrooms,
      :beds,
      :rules,
      :img_url,
      :wifi,
      :kitchen,
      :ac,
      :tv,
      :likes
end
