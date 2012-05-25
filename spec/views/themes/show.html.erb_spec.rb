require 'spec_helper'

describe "themes/show.html.erb" do
  before(:each) do
    @theme = assign(:theme, stub_model(Theme))
  end

  it "renders attributes in <p>" do
    render
  end
end
