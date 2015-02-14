class User < ActiveRecord::Base
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
  validates_format_of :email, :with => /@/
end
