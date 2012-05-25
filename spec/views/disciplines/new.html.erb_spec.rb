require 'spec_helper'

describe "disciplines/new.html.erb" do
  before(:each) do
    assign(:discipline, stub_model(Discipline).as_new_record)
  end

  it "renders new discipline form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => disciplines_path, :method => "post" do
    end
  end
end
