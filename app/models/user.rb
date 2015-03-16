class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name,
            presence: true,
            length: { maximum: 50 }
  # regex is a constant, hence uppercase
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
            presence: true,
            length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  # saves a securely hashed password_digest to db
  # validates for presence and equality of virtual attributes
  #   password and password_confirmation
  # authenticate method to return user when password correct
  has_secure_password
  validates :password,
            length: { minimum: 6 }
end
