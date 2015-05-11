require 'rails_helper'

RSpec.describe "grafs/edit", :type => :view do
  before(:each) do
    @graf = assign(:graf, Graf.create!(
      :table_service_order_id => 1
    ))
  end

  it "renders the edit graf form" do
    render

    assert_select "form[action=?][method=?]", graf_path(@graf), "post" do

      assert_select "input#graf_table_service_order_id[name=?]", "graf[table_service_order_id]"
    end
  end
end
