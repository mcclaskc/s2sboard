class User < ActiveRecord::Base
  attr_accessible :company, :email, :location, :name, :password, :password_confirmation
  has_secure_password

  before_save {|user| user.email = email.downcase}
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50}
  validates :company, presence: true, length: { maximum: 50}
  validates :location, presence: true, length: { maximum: 50}
  validates :password, length: { minimum: 6}

  validates :password, length: {minimum: 6}
  validates :password_confirmation, presence: true

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
