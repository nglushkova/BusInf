require 'spec_helper'

describe "advertisements/index.html.erb" do
  before(:each) do
    assign(:advertisements, [
      stub_model(Advertisement),
      stub_model(Advertisement)
    ])
  end

  it "renders a list of advertisements" do
    render
  end
end
