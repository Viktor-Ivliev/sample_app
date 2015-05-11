require 'rails_helper'

RSpec.describe "TableServiceOrders", :type => :request do
  describe "GET /table_service_orders" do
    it "works! (now write some real specs)" do
      get table_service_orders_path
      expect(response.status).to be(200)
    end
  end
end
