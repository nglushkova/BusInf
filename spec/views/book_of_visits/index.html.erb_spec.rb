require 'spec_helper'

describe "book_of_visits/index.html.erb" do
  before(:each) do
    assign(:book_of_visits, [
      stub_model(BookOfVisit),
      stub_model(BookOfVisit)
    ])
  end

  it "renders a list of book_of_visits" do
    render
  end
end
