class Price < ActiveRecord::Base
  belongs_to :service
  validates :value, :data_price, :service_id,  presence: true, length: { maximum: 50 }
end
