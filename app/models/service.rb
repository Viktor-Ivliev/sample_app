class Service < ActiveRecord::Base
  belongs_to :categori
  has_many :prices, dependent: :destroy
  has_many :table_service_orders, dependent: :destroy
  has_many :orders, through: :table_service_orders
  validates :name, :categori_id , presence: true, length: { maximum: 50 }
end
