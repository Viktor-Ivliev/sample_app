require 'rails_helper'

RSpec.describe "table_service_orders/index", :type => :view do
  before(:each) do
    assign(:table_service_orders, [
      TableServiceOrder.create!(
        :order_id => "Order",
        :service_id => "Service",
        :price_fact => "Price Fact",
        :info => "MyText"
      ),
      TableServiceOrder.create!(
        :order_id => "Order",
        :service_id => "Service",
        :price_fact => "Price Fact",
        :info => "MyText"
      )
    ])
  end

  it "renders a list of table_service_orders" do
    render
    assert_select "tr>td", :text => "Order".to_s, :count => 2
    assert_select "tr>td", :text => "Service".to_s, :count => 2
    assert_select "tr>td", :text => "Price Fact".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
