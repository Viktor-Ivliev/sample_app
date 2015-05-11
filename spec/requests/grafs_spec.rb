require 'rails_helper'

RSpec.describe "Grafs", :type => :request do
  describe "GET /grafs" do
    it "works! (now write some real specs)" do
      get grafs_path
      expect(response.status).to be(200)
    end
  end
end
