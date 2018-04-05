class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_one :host, through: :listing
  belongs_to :customer,
    class_name: 'User',
    foreign_key: :user_id
    
  validates :user_id, :listing, presence: true
  validates :check_in, presence: { message: "You must have a check in date."}
  validates :check_out, presence: { message: "You must have a check out date."}
  
  validates :valid_booking_period, :validates_status
  
  # Add an error if the booking period is invalid, if so return an error
  def valid_booking_period
    errors.add(:check_in, 'Booking must be at least 1 day in duration.') unless self.check_out - self.check_in >= 1.day
  end
  
  # def validates_status
  #   if self.status === 'Available'
  #     self.status = "Booked"
  #   else
  #     errors.add(:booked, 'This listing is unavailable.')
  #   end
  # end
  
  # Check if the listing has any bookings and if it overlaps return an error
  def listing_available
    listings_bookings = self.listings.bookings
    listings_bookings.any? do |listbook|
      if listbook.overlaps?(self)
        errors.add(:check_in, 'The dates you selected are unavailable.')
        break
      end
    end
  end
  
  def can_not_book_own_room
    if host.id == self.customer.id
      errors.add(:host, "You can not book your own room.")
    end
  end
  
end
