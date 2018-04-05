class Listing < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :users
  belongs_to :host, 
                  class_name: 'User',
                  foreign_key: :host_id
  
  
  validates_attachment_content_type :img_url, content_type: /\Aimage\/.*\z/
  
  validates :host_id, :title, :description, :address, :lat, :long, :price, :prop_type, :room_type, :num_guests, :bedrooms, :beds,
  :rules
  
  # IDEA: Move ameninities to another table/model?
end
