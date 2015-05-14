class Order < ActiveRecord::Base
  belongs_to :client
  has_many :grafs, dependent: :destroy
  has_many :table_service_orders, dependent: :destroy
  has_many :services, through: :table_service_orders
  accepts_nested_attributes_for :grafs, reject_if: :all_blank, :allow_destroy => true
  attr_accessor :service_ids
end
