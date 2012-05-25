require 'spec_helper'

describe "formation_of_competences/edit.html.erb" do
  before(:each) do
    @formation_of_competence = assign(:formation_of_competence, stub_model(FormationOfCompetence))
  end

  it "renders the edit formation_of_competence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => formation_of_competences_path(@formation_of_competence), :method => "post" do
    end
  end
end
