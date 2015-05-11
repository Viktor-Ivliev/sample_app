class Order < ActiveRecord::Base
  belongs_to :client
  has_many :table_service_orders
end
