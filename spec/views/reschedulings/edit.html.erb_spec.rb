require 'spec_helper'

describe "reschedulings/edit.html.erb" do
  before(:each) do
    @rescheduling = assign(:rescheduling, stub_model(Rescheduling))
  end

  it "renders the edit rescheduling form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reschedulings_path(@rescheduling), :method => "post" do
    end
  end
end
