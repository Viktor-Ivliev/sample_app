require 'rails_helper'

RSpec.describe "table_service_orders/show", :type => :view do
  before(:each) do
    @table_service_order = assign(:table_service_order, TableServiceOrder.create!(
      :order_id => "Order",
      :service_id => "Service",
      :price_fact => "Price Fact",
      :info => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Order/)
    expect(rendered).to match(/Service/)
    expect(rendered).to match(/Price Fact/)
    expect(rendered).to match(/MyText/)
  end
end
