require 'rails_helper'

RSpec.describe "table_service_orders/new", :type => :view do
  before(:each) do
    assign(:table_service_order, TableServiceOrder.new(
      :order_id => "MyString",
      :service_id => "MyString",
      :price_fact => "MyString",
      :info => "MyText"
    ))
  end

  it "renders new table_service_order form" do
    render

    assert_select "form[action=?][method=?]", table_service_orders_path, "post" do

      assert_select "input#table_service_order_order_id[name=?]", "table_service_order[order_id]"

      assert_select "input#table_service_order_service_id[name=?]", "table_service_order[service_id]"

      assert_select "input#table_service_order_price_fact[name=?]", "table_service_order[price_fact]"

      assert_select "textarea#table_service_order_info[name=?]", "table_service_order[info]"
    end
  end
end
