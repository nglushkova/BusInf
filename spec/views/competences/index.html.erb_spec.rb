require 'spec_helper'

describe "competences/index.html.erb" do
  before(:each) do
    assign(:competences, [
      stub_model(Competence),
      stub_model(Competence)
    ])
  end

  it "renders a list of competences" do
    render
  end
end
