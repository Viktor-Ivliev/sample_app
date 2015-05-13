require 'rails_helper'

RSpec.describe "activities/new", :type => :view do
  before(:each) do
    assign(:activity, Activity.new(
      :k_indactivities_id => "",
      :user_id => 1,
      :level => 1
    ))
  end

  it "renders new activity form" do
    render

    assert_select "form[action=?][method=?]", activities_path, "post" do

      assert_select "input#activity_k_indactivities_id[name=?]", "activity[k_indactivities_id]"

      assert_select "input#activity_user_id[name=?]", "activity[user_id]"

      assert_select "input#activity_level[name=?]", "activity[level]"
    end
  end
end
