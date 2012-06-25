require 'spec_helper'

describe "book_of_classes/show.html.erb" do
  before(:each) do
    @book_of_class = assign(:book_of_class, stub_model(BookOfClass))
  end

  it "renders attributes in <p>" do
    render
  end
end
