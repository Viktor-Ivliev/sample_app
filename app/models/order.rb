class Order < ActiveRecord::Base
  belongs_to :client
  has_many :table_service_orders, dependent: :destroy
  has_many :services, through: :table_service_orders
  accepts_nested_attributes_for :services
  attr_accessor :service_ids
end
