require 'rails_helper'

RSpec.describe "categoris/show", :type => :view do
  before(:each) do
    @categori = assign(:categori, Categori.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
