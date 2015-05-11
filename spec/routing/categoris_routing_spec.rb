require "rails_helper"

RSpec.describe CategorisController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/categoris").to route_to("categoris#index")
    end

    it "routes to #new" do
      expect(:get => "/categoris/new").to route_to("categoris#new")
    end

    it "routes to #show" do
      expect(:get => "/categoris/1").to route_to("categoris#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/categoris/1/edit").to route_to("categoris#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/categoris").to route_to("categoris#create")
    end

    it "routes to #update" do
      expect(:put => "/categoris/1").to route_to("categoris#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/categoris/1").to route_to("categoris#destroy", :id => "1")
    end

  end
end
