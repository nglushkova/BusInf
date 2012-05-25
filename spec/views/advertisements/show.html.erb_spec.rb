require 'spec_helper'

describe "advertisements/show.html.erb" do
  before(:each) do
    @advertisement = assign(:advertisement, stub_model(Advertisement))
  end

  it "renders attributes in <p>" do
    render
  end
end
