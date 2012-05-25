require 'spec_helper'

describe "teachers/edit.html.erb" do
  before(:each) do
    @teacher = assign(:teacher, stub_model(Teacher))
  end

  it "renders the edit teacher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teachers_path(@teacher), :method => "post" do
    end
  end
end
