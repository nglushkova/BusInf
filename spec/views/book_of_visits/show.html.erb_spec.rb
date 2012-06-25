require 'spec_helper'

describe "book_of_visits/show.html.erb" do
  before(:each) do
    @book_of_visit = assign(:book_of_visit, stub_model(BookOfVisit))
  end

  it "renders attributes in <p>" do
    render
  end
end
