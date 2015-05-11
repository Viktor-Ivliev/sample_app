require "rails_helper"

RSpec.describe TableServiceOrdersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/table_service_orders").to route_to("table_service_orders#index")
    end

    it "routes to #new" do
      expect(:get => "/table_service_orders/new").to route_to("table_service_orders#new")
    end

    it "routes to #show" do
      expect(:get => "/table_service_orders/1").to route_to("table_service_orders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/table_service_orders/1/edit").to route_to("table_service_orders#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/table_service_orders").to route_to("table_service_orders#create")
    end

    it "routes to #update" do
      expect(:put => "/table_service_orders/1").to route_to("table_service_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/table_service_orders/1").to route_to("table_service_orders#destroy", :id => "1")
    end

  end
end
