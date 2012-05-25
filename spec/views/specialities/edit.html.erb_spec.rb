require 'spec_helper'

describe "specialities/edit.html.erb" do
  before(:each) do
    @speciality = assign(:speciality, stub_model(Speciality))
  end

  it "renders the edit speciality form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => specialities_path(@speciality), :method => "post" do
    end
  end
end
