class Activity < ActiveRecord::Base
  has_many :k_indactivities;
  has_many :users
end
