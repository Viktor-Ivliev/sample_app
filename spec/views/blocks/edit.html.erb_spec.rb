require 'rails_helper'

RSpec.describe "blocks/edit", :type => :view do
  before(:each) do
    @block = assign(:block, Block.create!(
      :name => "MyString",
      :categori_id => "MyString"
    ))
  end

  it "renders the edit block form" do
    render

    assert_select "form[action=?][method=?]", block_path(@block), "post" do

      assert_select "input#block_name[name=?]", "block[name]"

      assert_select "input#block_categori_id[name=?]", "block[categori_id]"
    end
  end
end
