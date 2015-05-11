require 'rails_helper'

RSpec.describe "blocks/show", :type => :view do
  before(:each) do
    @block = assign(:block, Block.create!(
      :name => "Name",
      :categori_id => "Categori"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Categori/)
  end
end
