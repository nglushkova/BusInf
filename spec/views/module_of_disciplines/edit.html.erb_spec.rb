require 'spec_helper'

describe "module_of_disciplines/edit.html.erb" do
  before(:each) do
    @module_of_discipline = assign(:module_of_discipline, stub_model(ModuleOfDiscipline))
  end

  it "renders the edit module_of_discipline form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => module_of_disciplines_path(@module_of_discipline), :method => "post" do
    end
  end
end
