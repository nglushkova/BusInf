require 'spec_helper'

describe "specialities/show.html.erb" do
  before(:each) do
    @speciality = assign(:speciality, stub_model(Speciality))
  end

  it "renders attributes in <p>" do
    render
  end
end
