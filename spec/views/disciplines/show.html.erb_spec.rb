require 'spec_helper'

describe "disciplines/show.html.erb" do
  before(:each) do
    @discipline = assign(:discipline, stub_model(Discipline))
  end

  it "renders attributes in <p>" do
    render
  end
end
