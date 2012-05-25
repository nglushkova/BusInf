require 'spec_helper'

describe "CellSkeds" do
  describe "GET /cell_skeds" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get cell_skeds_path
      response.status.should be(200)
    end
  end
end
