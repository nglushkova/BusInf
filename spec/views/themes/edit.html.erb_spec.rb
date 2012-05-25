require 'spec_helper'

describe "themes/edit.html.erb" do
  before(:each) do
    @theme = assign(:theme, stub_model(Theme))
  end

  it "renders the edit theme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => themes_path(@theme), :method => "post" do
    end
  end
end
