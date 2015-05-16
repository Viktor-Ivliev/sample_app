require 'rails_helper'

RSpec.describe "assignments/show", :type => :view do
  before(:each) do
    @assignment = assign(:assignment, Assignment.create!(
      :user_id => 1,
      :Status_of_implementation_id => 2,
      :assignment_comment => "MyText",
      :time_word => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
  end
end
