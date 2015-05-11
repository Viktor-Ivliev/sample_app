require 'rails_helper'

RSpec.describe "clients/edit", :type => :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :name => "MyString",
      :tel => "MyString",
      :email => "MyString",
      :adress => "MyString",
      :comments => "MyString"
    ))
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(@client), "post" do

      assert_select "input#client_name[name=?]", "client[name]"

      assert_select "input#client_tel[name=?]", "client[tel]"

      assert_select "input#client_email[name=?]", "client[email]"

      assert_select "input#client_adress[name=?]", "client[adress]"

      assert_select "input#client_comments[name=?]", "client[comments]"
    end
  end
end
