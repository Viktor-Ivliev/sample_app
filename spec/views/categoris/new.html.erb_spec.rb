require 'rails_helper'

RSpec.describe "categoris/new", :type => :view do
  before(:each) do
    assign(:categori, Categori.new(
      :name => "MyString"
    ))
  end

  it "renders new categori form" do
    render

    assert_select "form[action=?][method=?]", categoris_path, "post" do

      assert_select "input#categori_name[name=?]", "categori[name]"
    end
  end
end
