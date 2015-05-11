require "rails_helper"

RSpec.describe GrafsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/grafs").to route_to("grafs#index")
    end

    it "routes to #new" do
      expect(:get => "/grafs/new").to route_to("grafs#new")
    end

    it "routes to #show" do
      expect(:get => "/grafs/1").to route_to("grafs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/grafs/1/edit").to route_to("grafs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/grafs").to route_to("grafs#create")
    end

    it "routes to #update" do
      expect(:put => "/grafs/1").to route_to("grafs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/grafs/1").to route_to("grafs#destroy", :id => "1")
    end

  end
end
