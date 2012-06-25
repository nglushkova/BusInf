require 'spec_helper'

describe "commentaries/index.html.erb" do
  before(:each) do
    assign(:commentaries, [
      stub_model(Commentary),
      stub_model(Commentary)
    ])
  end

  it "renders a list of commentaries" do
    render
  end
end
