require 'spec_helper'

describe "cell_skeds/show.html.erb" do
  before(:each) do
    @cell_sked = assign(:cell_sked, stub_model(CellSked))
  end

  it "renders attributes in <p>" do
    render
  end
end
