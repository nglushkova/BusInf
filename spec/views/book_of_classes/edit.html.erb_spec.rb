require 'spec_helper'

describe "book_of_classes/edit.html.erb" do
  before(:each) do
    @book_of_class = assign(:book_of_class, stub_model(BookOfClass))
  end

  it "renders the edit book_of_class form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => book_of_classes_path(@book_of_class), :method => "post" do
    end
  end
end
