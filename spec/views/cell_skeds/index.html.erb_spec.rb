require 'spec_helper'

describe "cell_skeds/index.html.erb" do
  before(:each) do
    assign(:cell_skeds, [
      stub_model(CellSked),
      stub_model(CellSked)
    ])
  end

  it "renders a list of cell_skeds" do
    render
  end
end
