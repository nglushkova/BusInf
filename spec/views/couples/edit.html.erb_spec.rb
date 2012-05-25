require 'spec_helper'

describe "couples/edit.html.erb" do
  before(:each) do
    @couple = assign(:couple, stub_model(Couple))
  end

  it "renders the edit couple form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => couples_path(@couple), :method => "post" do
    end
  end
end
