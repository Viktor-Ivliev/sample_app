require 'rails_helper'

RSpec.describe "prices/index", :type => :view do
  before(:each) do
    assign(:prices, [
      Price.create!(
        :value => 1,
        :id_service => 2
      ),
      Price.create!(
        :value => 1,
        :id_service => 2
      )
    ])
  end

  it "renders a list of prices" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
