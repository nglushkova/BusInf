require 'spec_helper'

describe "themes/index.html.erb" do
  before(:each) do
    assign(:themes, [
      stub_model(Theme),
      stub_model(Theme)
    ])
  end

  it "renders a list of themes" do
    render
  end
end
