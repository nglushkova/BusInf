require 'spec_helper'

describe "disciplines/edit.html.erb" do
  before(:each) do
    @discipline = assign(:discipline, stub_model(Discipline))
  end

  it "renders the edit discipline form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => disciplines_path(@discipline), :method => "post" do
    end
  end
end
