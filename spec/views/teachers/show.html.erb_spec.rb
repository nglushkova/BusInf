require 'spec_helper'

describe "teachers/show.html.erb" do
  before(:each) do
    @teacher = assign(:teacher, stub_model(Teacher))
  end

  it "renders attributes in <p>" do
    render
  end
end
