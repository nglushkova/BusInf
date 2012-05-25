require 'spec_helper'

describe "teachers/new.html.erb" do
  before(:each) do
    assign(:teacher, stub_model(Teacher).as_new_record)
  end

  it "renders new teacher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teachers_path, :method => "post" do
    end
  end
end
