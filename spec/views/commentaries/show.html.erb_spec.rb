require 'spec_helper'

describe "commentaries/show.html.erb" do
  before(:each) do
    @commentary = assign(:commentary, stub_model(Commentary))
  end

  it "renders attributes in <p>" do
    render
  end
end
