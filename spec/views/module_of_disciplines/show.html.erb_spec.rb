require 'spec_helper'

describe "module_of_disciplines/show.html.erb" do
  before(:each) do
    @module_of_discipline = assign(:module_of_discipline, stub_model(ModuleOfDiscipline))
  end

  it "renders attributes in <p>" do
    render
  end
end
