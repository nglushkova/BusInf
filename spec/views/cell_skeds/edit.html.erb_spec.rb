require 'spec_helper'

describe "cell_skeds/edit.html.erb" do
  before(:each) do
    @cell_sked = assign(:cell_sked, stub_model(CellSked))
  end

  it "renders the edit cell_sked form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cell_skeds_path(@cell_sked), :method => "post" do
    end
  end
end
