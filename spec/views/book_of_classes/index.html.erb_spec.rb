require 'spec_helper'

describe "book_of_classes/index.html.erb" do
  before(:each) do
    assign(:book_of_classes, [
      stub_model(BookOfClass),
      stub_model(BookOfClass)
    ])
  end

  it "renders a list of book_of_classes" do
    render
  end
end
