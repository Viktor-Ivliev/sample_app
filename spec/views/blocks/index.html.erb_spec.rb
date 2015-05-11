require 'rails_helper'

RSpec.describe "blocks/index", :type => :view do
  before(:each) do
    assign(:blocks, [
      Block.create!(
        :name => "Name",
        :categori_id => "Categori"
      ),
      Block.create!(
        :name => "Name",
        :categori_id => "Categori"
      )
    ])
  end

  it "renders a list of blocks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Categori".to_s, :count => 2
  end
end
