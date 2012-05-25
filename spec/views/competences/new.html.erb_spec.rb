require 'spec_helper'

describe "competences/new.html.erb" do
  before(:each) do
    assign(:competence, stub_model(Competence).as_new_record)
  end

  it "renders new competence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => competences_path, :method => "post" do
    end
  end
end
