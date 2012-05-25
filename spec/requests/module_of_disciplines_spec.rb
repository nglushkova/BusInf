require 'spec_helper'

describe "ModuleOfDisciplines" do
  describe "GET /module_of_disciplines" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get module_of_disciplines_path
      response.status.should be(200)
    end
  end
end
