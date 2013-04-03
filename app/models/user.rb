class User < ActiveRecord::Base
  attr_accessible :company, :email, :location, :name, :password, :password_confirmation, :website, :company_bio , :photo
  has_secure_password

  has_many :jobs, dependent: :destroy

  before_save {|user| user.email = email.downcase}
  before_save :create_remember_token

  has_attached_file :photo , :styles => { :medium => "200x200>", :thumb => "100x100>" } 
  #:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                   # :url => "/system/:attachment/:id/:style/:filename"




  #validates :name, presence: true, length: { maximum: 50}
  validates :company, presence: true, length: { maximum: 50}
  #validates :location, presence: true, length: { maximum: 50}
  validates :password, length: { minimum: 6}

  validates :password, length: {minimum: 6}
  validates :password_confirmation, presence: true

  validates :location, presence: true, length: { maximum: 50 }

  #A regular expression to validate emails for now
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, 
            uniqueness: {case_sensitive: false}

  validates :website, uniqueness: true

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
