require "spec_helper"

describe SpecialitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/specialities").should route_to("specialities#index")
    end

    it "routes to #new" do
      get("/specialities/new").should route_to("specialities#new")
    end

    it "routes to #show" do
      get("/specialities/1").should route_to("specialities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/specialities/1/edit").should route_to("specialities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/specialities").should route_to("specialities#create")
    end

    it "routes to #update" do
      put("/specialities/1").should route_to("specialities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/specialities/1").should route_to("specialities#destroy", :id => "1")
    end

  end
end
