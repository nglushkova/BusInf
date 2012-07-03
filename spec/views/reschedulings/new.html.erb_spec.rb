require 'spec_helper'

describe "reschedulings/new.html.erb" do
  before(:each) do
    assign(:rescheduling, stub_model(Rescheduling).as_new_record)
  end

  it "renders new rescheduling form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reschedulings_path, :method => "post" do
    end
  end
end
