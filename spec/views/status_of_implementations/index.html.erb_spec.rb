require 'rails_helper'

RSpec.describe "status_of_implementations/index", :type => :view do
  before(:each) do
    assign(:status_of_implementations, [
      StatusOfImplementation.create!(
        :order_id => 1,
        :status => false
      ),
      StatusOfImplementation.create!(
        :order_id => 1,
        :status => false
      )
    ])
  end

  it "renders a list of status_of_implementations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
