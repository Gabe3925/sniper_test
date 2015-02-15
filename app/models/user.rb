class User < ActiveRecord::Base
  before_save { self.email = email.downcase }	
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true, uniqueness: { case_sensitive: false }
  validates_format_of :email, :with => /@/
  has_secure_password
  validates :password, length: { minimum: 6 }
end
