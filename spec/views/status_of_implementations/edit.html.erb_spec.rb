require 'rails_helper'

RSpec.describe "status_of_implementations/edit", :type => :view do
  before(:each) do
    @status_of_implementation = assign(:status_of_implementation, StatusOfImplementation.create!(
      :order_id => 1,
      :status => false
    ))
  end

  it "renders the edit status_of_implementation form" do
    render

    assert_select "form[action=?][method=?]", status_of_implementation_path(@status_of_implementation), "post" do

      assert_select "input#status_of_implementation_order_id[name=?]", "status_of_implementation[order_id]"

      assert_select "input#status_of_implementation_status[name=?]", "status_of_implementation[status]"
    end
  end
end
