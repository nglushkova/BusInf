require 'spec_helper'

describe "FormationOfCompetences" do
  describe "GET /formation_of_competences" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get formation_of_competences_path
      response.status.should be(200)
    end
  end
end
