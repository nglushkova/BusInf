require 'spec_helper'

describe "specialities/index.html.erb" do
  before(:each) do
    assign(:specialities, [
      stub_model(Speciality),
      stub_model(Speciality)
    ])
  end

  it "renders a list of specialities" do
    render
  end
end
