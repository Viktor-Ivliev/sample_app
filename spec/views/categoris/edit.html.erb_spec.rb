require 'rails_helper'

RSpec.describe "categoris/edit", :type => :view do
  before(:each) do
    @categori = assign(:categori, Categori.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit categori form" do
    render

    assert_select "form[action=?][method=?]", categori_path(@categori), "post" do

      assert_select "input#categori_name[name=?]", "categori[name]"
    end
  end
end
