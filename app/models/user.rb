class User < ApplicationRecord
  has_secure_password
  
  has_many :listings, foreign_key: :host_id
  has_many :bookings
  has_many :reviews
  
  validates :firstname, :lastname, :password_digest, presence: true
  validates :username, :email, uniqueness: true
	validates :password, length: {minimum: 6}
	
	after_initialize :ensure_session_token
	
	# Find the user by credentials and check if they are correct
	def self.find_user_by_credentials(email, password)
	  user = User.find_by(email: email)
	  user && user.authenticate(password) ? user : nil
	end
	
	# Generate a secure session token
	def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end
	
	# Helper to generate, save and return new session token
	def reset_session_token!
    self.session_token = User.generate_session_token
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end


end
