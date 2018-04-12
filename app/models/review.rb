class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  
  validates :body, :rating, presence: true
  
  # validates :user_id, uniqueness: { scope: :listing_id, message: "You may only review a room once." }
  validates :rating, presence: { message: "You must leave a rating."}
  validates :body, presence: { message: "You must write a comment."}
  validate :min_comment_length
  
  # def cant_review_own_listing
  #   if self.user.id == self.listing.user_id
  #     errors.add(:sameUser, "You cannot review your own room.")
  #   end
  # end
    
  def min_comment_length
    if self.body.length < 5
      errors.add(:body, "Your comment must be at least 5 characters long.")
    end
  end
  
  def only_review_once
    if self.body == "" && self.rating.nil?
      errors.add(:emptyForm, "You must leave a rating and write a comment to review.")
    end
  end

end
