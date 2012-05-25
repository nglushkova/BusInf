require 'spec_helper'

describe "formation_of_competences/new.html.erb" do
  before(:each) do
    assign(:formation_of_competence, stub_model(FormationOfCompetence).as_new_record)
  end

  it "renders new formation_of_competence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => formation_of_competences_path, :method => "post" do
    end
  end
end
