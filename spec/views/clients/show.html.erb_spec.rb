require 'rails_helper'

RSpec.describe "clients/show", :type => :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :name => "Name",
      :tel => "Tel",
      :email => "Email",
      :adress => "Adress",
      :comments => "Comments"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Adress/)
    expect(rendered).to match(/Comments/)
  end
end
