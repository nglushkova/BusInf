require 'spec_helper'

describe "couples/new.html.erb" do
  before(:each) do
    assign(:couple, stub_model(Couple).as_new_record)
  end

  it "renders new couple form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => couples_path, :method => "post" do
    end
  end
end
