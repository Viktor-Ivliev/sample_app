require 'rails_helper'

RSpec.describe "grafs/new", :type => :view do
  before(:each) do
    assign(:graf, Graf.new(
      :table_service_order_id => 1
    ))
  end

  it "renders new graf form" do
    render

    assert_select "form[action=?][method=?]", grafs_path, "post" do

      assert_select "input#graf_table_service_order_id[name=?]", "graf[table_service_order_id]"
    end
  end
end
