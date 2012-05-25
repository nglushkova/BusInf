require 'spec_helper'

describe "interim_attestations/index.html.erb" do
  before(:each) do
    assign(:interim_attestations, [
      stub_model(InterimAttestation),
      stub_model(InterimAttestation)
    ])
  end

  it "renders a list of interim_attestations" do
    render
  end
end
