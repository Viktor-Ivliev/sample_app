require 'rails_helper'

RSpec.describe "grafs/show", :type => :view do
  before(:each) do
    @graf = assign(:graf, Graf.create!(
      :table_service_order_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end
