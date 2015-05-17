class Assignment < ActiveRecord::Base
  belongs_to :status_of_implementation
  belongs_to :user
end
