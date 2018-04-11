class Listing < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :users
  # belongs_to :host, 
  #                 class_name: 'User',
  #                 foreign_key: :host_id
  
  # Cannot seed with this validation
  # validates_attachment_content_type :img_url, content_type: /\Aimage\/.*\z/
  
  validates :host_id, :title, :description, :address, :lat, :lng, :price, :prop_type, :room_type, :num_guests, :bedrooms, :beds, :rules, presence: true
  
  #  For google maps search
  scope :by_lng, -> (min, max) { min && max ? where('lng >= :min AND lng <= :max', min: min, max: max) : all }
  scope :by_lat, -> (min, max) { min && max ? where('lat >= :min AND lat <= :max', min: min, max: max) : all }
 
  API_RESULTS_LIMIT = 100
 
  def self.search(min_lat:, max_lat:, min_lng:, max_lng:)
    by_lat(min_lat, max_lat).
      by_lng(min_lng, max_lng).
      limit(API_RESULTS_LIMIT)
  end

  
  # IDEA: Move ameninities to another table/model?
  
  def rating
    reviewTotal = 0
    
    self.reviews.each do |review|
      reviewTotal += review.rating
    end
    reviewTotal.to_f / self.reviews.count
  end
  
  
end
