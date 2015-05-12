require 'rails_helper'

RSpec.describe "k_indactivities/show", :type => :view do
  before(:each) do
    @k_indactivity = assign(:k_indactivity, KIndactivity.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
