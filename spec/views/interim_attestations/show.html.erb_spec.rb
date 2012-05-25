require 'spec_helper'

describe "interim_attestations/show.html.erb" do
  before(:each) do
    @interim_attestation = assign(:interim_attestation, stub_model(InterimAttestation))
  end

  it "renders attributes in <p>" do
    render
  end
end
