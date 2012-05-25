require 'spec_helper'

describe "teachers/index.html.erb" do
  before(:each) do
    assign(:teachers, [
      stub_model(Teacher),
      stub_model(Teacher)
    ])
  end

  it "renders a list of teachers" do
    render
  end
end
