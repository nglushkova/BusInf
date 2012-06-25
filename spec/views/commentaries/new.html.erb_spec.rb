require 'spec_helper'

describe "commentaries/new.html.erb" do
  before(:each) do
    assign(:commentary, stub_model(Commentary).as_new_record)
  end

  it "renders new commentary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => commentaries_path, :method => "post" do
    end
  end
end
