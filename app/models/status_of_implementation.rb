class StatusOfImplementation < ActiveRecord::Base
  belongs_to :order
  has_many :assignments, dependent: :destroy
  has_many :users, through: :assignments
  accepts_nested_attributes_for :assignments, reject_if: :all_blank, :allow_destroy => true
end
