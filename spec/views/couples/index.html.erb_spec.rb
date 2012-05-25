require 'spec_helper'

describe "couples/index.html.erb" do
  before(:each) do
    assign(:couples, [
      stub_model(Couple),
      stub_model(Couple)
    ])
  end

  it "renders a list of couples" do
    render
  end
end
