require 'spec_helper'

describe "competences/edit.html.erb" do
  before(:each) do
    @competence = assign(:competence, stub_model(Competence))
  end

  it "renders the edit competence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => competences_path(@competence), :method => "post" do
    end
  end
end
