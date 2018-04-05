class Listing < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :users
  # belongs_to :host, 
  #                 class_name: 'User',
  #                 foreign_key: :host_id
  
  # Cannot seed with this validation
  # validates_attachment_content_type :img_url, content_type: /\Aimage\/.*\z/
  
  validates :host_id, :title, :description, :address, :lat, :long, :price, :prop_type, :room_type, :num_guests, :bedrooms, :beds, :rules, presence: true
  
  
  
  # IDEA: Move ameninities to another table/model?
  
  def rating
    reviewTotal = 0
    
    self.reviews.each do |review|
      reviewTotal += review.rating
    end
    reviewTotal.to_f / self.reviews.count
  end
end
