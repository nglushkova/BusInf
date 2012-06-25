require 'spec_helper'

describe "book_of_visits/edit.html.erb" do
  before(:each) do
    @book_of_visit = assign(:book_of_visit, stub_model(BookOfVisit))
  end

  it "renders the edit book_of_visit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => book_of_visits_path(@book_of_visit), :method => "post" do
    end
  end
end
