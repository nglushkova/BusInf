require 'spec_helper'

describe "module_of_disciplines/new.html.erb" do
  before(:each) do
    assign(:module_of_discipline, stub_model(ModuleOfDiscipline).as_new_record)
  end

  it "renders new module_of_discipline form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => module_of_disciplines_path, :method => "post" do
    end
  end
end
