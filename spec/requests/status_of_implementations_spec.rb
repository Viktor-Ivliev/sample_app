require 'rails_helper'

RSpec.describe "StatusOfImplementations", :type => :request do
  describe "GET /status_of_implementations" do
    it "works! (now write some real specs)" do
      get status_of_implementations_path
      expect(response.status).to be(200)
    end
  end
end
