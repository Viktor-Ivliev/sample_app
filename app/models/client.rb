class Client < ActiveRecord::Base
  has_many :orders
  before_save { email.downcase! }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :name, :adress,:tel,:email,  presence: true, length: { maximum: 50 }
end
