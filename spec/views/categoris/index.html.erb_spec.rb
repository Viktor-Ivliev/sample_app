require 'rails_helper'

RSpec.describe "categoris/index", :type => :view do
  before(:each) do
    assign(:categoris, [
      Categori.create!(
        :name => "Name"
      ),
      Categori.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of categoris" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
