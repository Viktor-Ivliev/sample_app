require 'rails_helper'

RSpec.describe "k_indactivities/edit", :type => :view do
  before(:each) do
    @k_indactivity = assign(:k_indactivity, KIndactivity.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit k_indactivity form" do
    render

    assert_select "form[action=?][method=?]", k_indactivity_path(@k_indactivity), "post" do

      assert_select "input#k_indactivity_name[name=?]", "k_indactivity[name]"
    end
  end
end
