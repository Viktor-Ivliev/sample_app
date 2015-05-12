require 'rails_helper'

RSpec.describe "k_indactivities/index", :type => :view do
  before(:each) do
    assign(:k_indactivities, [
      KIndactivity.create!(
        :name => "Name"
      ),
      KIndactivity.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of k_indactivities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
