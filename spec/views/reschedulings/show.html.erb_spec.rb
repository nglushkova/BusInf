require 'spec_helper'

describe "reschedulings/show.html.erb" do
  before(:each) do
    @rescheduling = assign(:rescheduling, stub_model(Rescheduling))
  end

  it "renders attributes in <p>" do
    render
  end
end
