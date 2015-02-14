class User < ActiveRecord::Base
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true, uniqueness: { case_sensitive: false }
  validates_format_of :email, :with => /@/
end
