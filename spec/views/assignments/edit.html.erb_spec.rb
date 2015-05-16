require 'rails_helper'

RSpec.describe "assignments/edit", :type => :view do
  before(:each) do
    @assignment = assign(:assignment, Assignment.create!(
      :user_id => 1,
      :Status_of_implementation_id => 1,
      :assignment_comment => "MyText",
      :time_word => 1
    ))
  end

  it "renders the edit assignment form" do
    render

    assert_select "form[action=?][method=?]", assignment_path(@assignment), "post" do

      assert_select "input#assignment_user_id[name=?]", "assignment[user_id]"

      assert_select "input#assignment_Status_of_implementation_id[name=?]", "assignment[Status_of_implementation_id]"

      assert_select "textarea#assignment_assignment_comment[name=?]", "assignment[assignment_comment]"

      assert_select "input#assignment_time_word[name=?]", "assignment[time_word]"
    end
  end
end
