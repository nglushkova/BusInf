require 'spec_helper'

describe "advertisements/new.html.erb" do
  before(:each) do
    assign(:advertisement, stub_model(Advertisement).as_new_record)
  end

  it "renders new advertisement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => advertisements_path, :method => "post" do
    end
  end
end
