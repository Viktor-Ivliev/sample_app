require 'rails_helper'

RSpec.describe "assignments/index", :type => :view do
  before(:each) do
    assign(:assignments, [
      Assignment.create!(
        :user_id => 1,
        :Status_of_implementation_id => 2,
        :assignment_comment => "MyText",
        :time_word => 3
      ),
      Assignment.create!(
        :user_id => 1,
        :Status_of_implementation_id => 2,
        :assignment_comment => "MyText",
        :time_word => 3
      )
    ])
  end

  it "renders a list of assignments" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
