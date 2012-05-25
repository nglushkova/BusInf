require 'spec_helper'

describe "advertisements/edit.html.erb" do
  before(:each) do
    @advertisement = assign(:advertisement, stub_model(Advertisement))
  end

  it "renders the edit advertisement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => advertisements_path(@advertisement), :method => "post" do
    end
  end
end
