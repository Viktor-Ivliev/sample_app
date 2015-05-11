class Service < ActiveRecord::Base
  belongs_to :categori
  has_many :prices, dependent: :destroy
  has_many :table_service_orders, dependent: :destroy
  validates :name, :comment,  presence: true, length: { maximum: 50 }
end
