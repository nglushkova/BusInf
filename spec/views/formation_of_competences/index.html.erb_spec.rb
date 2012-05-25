require 'spec_helper'

describe "formation_of_competences/index.html.erb" do
  before(:each) do
    assign(:formation_of_competences, [
      stub_model(FormationOfCompetence),
      stub_model(FormationOfCompetence)
    ])
  end

  it "renders a list of formation_of_competences" do
    render
  end
end
