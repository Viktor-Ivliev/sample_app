class Graf < ActiveRecord::Base
  belongs_to :order
  has_many :table_service_orders, through: :order
  has_many :services, through: :table_service_orders
end
