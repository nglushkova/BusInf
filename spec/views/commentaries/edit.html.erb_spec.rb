require 'spec_helper'

describe "commentaries/edit.html.erb" do
  before(:each) do
    @commentary = assign(:commentary, stub_model(Commentary))
  end

  it "renders the edit commentary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => commentaries_path(@commentary), :method => "post" do
    end
  end
end
