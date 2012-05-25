require 'spec_helper'

describe "module_of_disciplines/index.html.erb" do
  before(:each) do
    assign(:module_of_disciplines, [
      stub_model(ModuleOfDiscipline),
      stub_model(ModuleOfDiscipline)
    ])
  end

  it "renders a list of module_of_disciplines" do
    render
  end
end
