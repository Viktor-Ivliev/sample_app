require "rails_helper"

RSpec.describe StatusOfImplementationsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/status_of_implementations").to route_to("status_of_implementations#index")
    end

    it "routes to #new" do
      expect(:get => "/status_of_implementations/new").to route_to("status_of_implementations#new")
    end

    it "routes to #show" do
      expect(:get => "/status_of_implementations/1").to route_to("status_of_implementations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/status_of_implementations/1/edit").to route_to("status_of_implementations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/status_of_implementations").to route_to("status_of_implementations#create")
    end

    it "routes to #update" do
      expect(:put => "/status_of_implementations/1").to route_to("status_of_implementations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/status_of_implementations/1").to route_to("status_of_implementations#destroy", :id => "1")
    end

  end
end
