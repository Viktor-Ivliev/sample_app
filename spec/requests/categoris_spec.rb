require 'rails_helper'

RSpec.describe "Categoris", :type => :request do
  describe "GET /categoris" do
    it "works! (now write some real specs)" do
      get categoris_path
      expect(response.status).to be(200)
    end
  end
end
