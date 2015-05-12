require "rails_helper"

RSpec.describe KIndactivitiesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/k_indactivities").to route_to("k_indactivities#index")
    end

    it "routes to #new" do
      expect(:get => "/k_indactivities/new").to route_to("k_indactivities#new")
    end

    it "routes to #show" do
      expect(:get => "/k_indactivities/1").to route_to("k_indactivities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/k_indactivities/1/edit").to route_to("k_indactivities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/k_indactivities").to route_to("k_indactivities#create")
    end

    it "routes to #update" do
      expect(:put => "/k_indactivities/1").to route_to("k_indactivities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/k_indactivities/1").to route_to("k_indactivities#destroy", :id => "1")
    end

  end
end
