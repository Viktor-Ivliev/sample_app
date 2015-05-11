require 'rails_helper'

RSpec.describe "orders/new", :type => :view do
  before(:each) do
    assign(:order, Order.new(
      :name => "MyString",
      :client_id => "MyString"
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_name[name=?]", "order[name]"

      assert_select "input#order_client_id[name=?]", "order[client_id]"
    end
  end
end
