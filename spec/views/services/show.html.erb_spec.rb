require 'rails_helper'

RSpec.describe "services/show", :type => :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      :name => "Name",
      :id_price => "Id Price",
      :comments => "Comments"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Id Price/)
    expect(rendered).to match(/Comments/)
  end
end
