require 'spec_helper'

describe "couples/show.html.erb" do
  before(:each) do
    @couple = assign(:couple, stub_model(Couple))
  end

  it "renders attributes in <p>" do
    render
  end
end
