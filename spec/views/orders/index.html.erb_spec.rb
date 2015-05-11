require 'rails_helper'

RSpec.describe "orders/index", :type => :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :name => "Name",
        :client_id => "Client"
      ),
      Order.create!(
        :name => "Name",
        :client_id => "Client"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Client".to_s, :count => 2
  end
end
