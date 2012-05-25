require 'spec_helper'

describe "disciplines/index.html.erb" do
  before(:each) do
    assign(:disciplines, [
      stub_model(Discipline),
      stub_model(Discipline)
    ])
  end

  it "renders a list of disciplines" do
    render
  end
end
