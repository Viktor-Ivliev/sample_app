require 'rails_helper'

RSpec.describe "grafs/index", :type => :view do
  before(:each) do
    assign(:grafs, [
      Graf.create!(
        :table_service_order_id => 1
      ),
      Graf.create!(
        :table_service_order_id => 1
      )
    ])
  end

  it "renders a list of grafs" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
