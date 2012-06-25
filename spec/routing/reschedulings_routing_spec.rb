require "spec_helper"

describe ReschedulingsController do
  describe "routing" do

    it "routes to #index" do
      get("/reschedulings").should route_to("reschedulings#index")
    end

    it "routes to #new" do
      get("/reschedulings/new").should route_to("reschedulings#new")
    end

    it "routes to #show" do
      get("/reschedulings/1").should route_to("reschedulings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reschedulings/1/edit").should route_to("reschedulings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reschedulings").should route_to("reschedulings#create")
    end

    it "routes to #update" do
      put("/reschedulings/1").should route_to("reschedulings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reschedulings/1").should route_to("reschedulings#destroy", :id => "1")
    end

  end
end
