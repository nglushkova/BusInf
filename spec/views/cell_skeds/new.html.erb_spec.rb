require 'spec_helper'

describe "cell_skeds/new.html.erb" do
  before(:each) do
    assign(:cell_sked, stub_model(CellSked).as_new_record)
  end

  it "renders new cell_sked form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cell_skeds_path, :method => "post" do
    end
  end
end
