require 'rails_helper'

RSpec.describe "blocks/new", :type => :view do
  before(:each) do
    assign(:block, Block.new(
      :name => "MyString",
      :categori_id => "MyString"
    ))
  end

  it "renders new block form" do
    render

    assert_select "form[action=?][method=?]", blocks_path, "post" do

      assert_select "input#block_name[name=?]", "block[name]"

      assert_select "input#block_categori_id[name=?]", "block[categori_id]"
    end
  end
end
