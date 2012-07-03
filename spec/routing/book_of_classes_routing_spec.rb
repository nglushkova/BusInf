require "spec_helper"

describe BookOfClassesController do
  describe "routing" do

    it "routes to #index" do
      get("/book_of_classes").should route_to("book_of_classes#index")
    end

    it "routes to #new" do
      get("/book_of_classes/new").should route_to("book_of_classes#new")
    end

    it "routes to #show" do
      get("/book_of_classes/1").should route_to("book_of_classes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/book_of_classes/1/edit").should route_to("book_of_classes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/book_of_classes").should route_to("book_of_classes#create")
    end

    it "routes to #update" do
      put("/book_of_classes/1").should route_to("book_of_classes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/book_of_classes/1").should route_to("book_of_classes#destroy", :id => "1")
    end

  end
end
