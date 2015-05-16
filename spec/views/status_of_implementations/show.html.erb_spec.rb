require 'rails_helper'

RSpec.describe "status_of_implementations/show", :type => :view do
  before(:each) do
    @status_of_implementation = assign(:status_of_implementation, StatusOfImplementation.create!(
      :order_id => 1,
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
  end
end
