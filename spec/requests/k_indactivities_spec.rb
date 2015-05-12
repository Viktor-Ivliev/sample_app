require 'rails_helper'

RSpec.describe "KIndactivities", :type => :request do
  describe "GET /k_indactivities" do
    it "works! (now write some real specs)" do
      get k_indactivities_path
      expect(response.status).to be(200)
    end
  end
end
