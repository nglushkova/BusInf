require 'spec_helper'

describe "competences/show.html.erb" do
  before(:each) do
    @competence = assign(:competence, stub_model(Competence))
  end

  it "renders attributes in <p>" do
    render
  end
end
