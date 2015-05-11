# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
# Apply patch for date and date times quoting
#ActiveRecord::ConnectionAdapters::Quoting.
#     send(:include, QuotingPatch)
# Apply patch for date and date input
