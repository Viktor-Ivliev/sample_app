require 'rails_helper'

RSpec.describe "prices/new", :type => :view do
  before(:each) do
    assign(:price, Price.new(
      :value => 1,
      :id_service => 1
    ))
  end

  it "renders new price form" do
    render

    assert_select "form[action=?][method=?]", prices_path, "post" do

      assert_select "input#price_value[name=?]", "price[value]"

      assert_select "input#price_id_service[name=?]", "price[id_service]"
    end
  end
end
