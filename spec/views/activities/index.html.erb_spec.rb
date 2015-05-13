require 'rails_helper'

RSpec.describe "activities/index", :type => :view do
  before(:each) do
    assign(:activities, [
      Activity.create!(
        :k_indactivities_id => "",
        :user_id => 1,
        :level => 2
      ),
      Activity.create!(
        :k_indactivities_id => "",
        :user_id => 1,
        :level => 2
      )
    ])
  end

  it "renders a list of activities" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
