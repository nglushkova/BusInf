require 'spec_helper'

describe "interim_attestations/new.html.erb" do
  before(:each) do
    assign(:interim_attestation, stub_model(InterimAttestation).as_new_record)
  end

  it "renders new interim_attestation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => interim_attestations_path, :method => "post" do
    end
  end
end
