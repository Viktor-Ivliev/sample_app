require 'rails_helper'

RSpec.describe "prices/edit", :type => :view do
  before(:each) do
    @price = assign(:price, Price.create!(
      :value => 1,
      :id_service => 1
    ))
  end

  it "renders the edit price form" do
    render

    assert_select "form[action=?][method=?]", price_path(@price), "post" do

      assert_select "input#price_value[name=?]", "price[value]"

      assert_select "input#price_id_service[name=?]", "price[id_service]"
    end
  end
end
