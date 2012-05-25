require 'spec_helper'

describe "interim_attestations/edit.html.erb" do
  before(:each) do
    @interim_attestation = assign(:interim_attestation, stub_model(InterimAttestation))
  end

  it "renders the edit interim_attestation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => interim_attestations_path(@interim_attestation), :method => "post" do
    end
  end
end
