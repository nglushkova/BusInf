require 'spec_helper'

describe "book_of_classes/new.html.erb" do
  before(:each) do
    assign(:book_of_class, stub_model(BookOfClass).as_new_record)
  end

  it "renders new book_of_class form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => book_of_classes_path, :method => "post" do
    end
  end
end
