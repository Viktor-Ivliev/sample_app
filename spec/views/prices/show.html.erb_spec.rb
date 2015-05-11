require 'rails_helper'

RSpec.describe "prices/show", :type => :view do
  before(:each) do
    @price = assign(:price, Price.create!(
      :value => 1,
      :id_service => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
