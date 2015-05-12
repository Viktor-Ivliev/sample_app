require 'rails_helper'

RSpec.describe "k_indactivities/new", :type => :view do
  before(:each) do
    assign(:k_indactivity, KIndactivity.new(
      :name => "MyString"
    ))
  end

  it "renders new k_indactivity form" do
    render

    assert_select "form[action=?][method=?]", k_indactivities_path, "post" do

      assert_select "input#k_indactivity_name[name=?]", "k_indactivity[name]"
    end
  end
end
