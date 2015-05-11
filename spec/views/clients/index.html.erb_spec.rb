require 'rails_helper'

RSpec.describe "clients/index", :type => :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        :name => "Name",
        :tel => "Tel",
        :email => "Email",
        :adress => "Adress",
        :comments => "Comments"
      ),
      Client.create!(
        :name => "Name",
        :tel => "Tel",
        :email => "Email",
        :adress => "Adress",
        :comments => "Comments"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Adress".to_s, :count => 2
    assert_select "tr>td", :text => "Comments".to_s, :count => 2
  end
end
