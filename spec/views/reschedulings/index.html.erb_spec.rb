require 'spec_helper'

describe "reschedulings/index.html.erb" do
  before(:each) do
    assign(:reschedulings, [
      stub_model(Rescheduling),
      stub_model(Rescheduling)
    ])
  end

  it "renders a list of reschedulings" do
    render
  end
end
