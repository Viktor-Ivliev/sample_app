class Service < ActiveRecord::Base
  has_many :prices
  has_many :table_service_orders
  validates :name, :comment,  presence: true, length: { maximum: 50 }
end
