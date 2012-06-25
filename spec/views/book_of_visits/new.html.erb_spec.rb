require 'spec_helper'

describe "book_of_visits/new.html.erb" do
  before(:each) do
    assign(:book_of_visit, stub_model(BookOfVisit).as_new_record)
  end

  it "renders new book_of_visit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => book_of_visits_path, :method => "post" do
    end
  end
end
