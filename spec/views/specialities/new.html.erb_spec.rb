require 'spec_helper'

describe "specialities/new.html.erb" do
  before(:each) do
    assign(:speciality, stub_model(Speciality).as_new_record)
  end

  it "renders new speciality form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => specialities_path, :method => "post" do
    end
  end
end
