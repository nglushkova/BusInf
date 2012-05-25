require 'spec_helper'

describe "formation_of_competences/show.html.erb" do
  before(:each) do
    @formation_of_competence = assign(:formation_of_competence, stub_model(FormationOfCompetence))
  end

  it "renders attributes in <p>" do
    render
  end
end
