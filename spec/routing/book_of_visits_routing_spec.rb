require "spec_helper"

describe BookOfVisitsController do
  describe "routing" do

    it "routes to #index" do
      get("/book_of_visits").should route_to("book_of_visits#index")
    end

    it "routes to #new" do
      get("/book_of_visits/new").should route_to("book_of_visits#new")
    end

    it "routes to #show" do
      get("/book_of_visits/1").should route_to("book_of_visits#show", :id => "1")
    end

    it "routes to #edit" do
      get("/book_of_visits/1/edit").should route_to("book_of_visits#edit", :id => "1")
    end

    it "routes to #create" do
      post("/book_of_visits").should route_to("book_of_visits#create")
    end

    it "routes to #update" do
      put("/book_of_visits/1").should route_to("book_of_visits#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/book_of_visits/1").should route_to("book_of_visits#destroy", :id => "1")
    end

  end
end
