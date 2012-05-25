require "spec_helper"

describe CellSkedsController do
  describe "routing" do

    it "routes to #index" do
      get("/cell_skeds").should route_to("cell_skeds#index")
    end

    it "routes to #new" do
      get("/cell_skeds/new").should route_to("cell_skeds#new")
    end

    it "routes to #show" do
      get("/cell_skeds/1").should route_to("cell_skeds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cell_skeds/1/edit").should route_to("cell_skeds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cell_skeds").should route_to("cell_skeds#create")
    end

    it "routes to #update" do
      put("/cell_skeds/1").should route_to("cell_skeds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cell_skeds/1").should route_to("cell_skeds#destroy", :id => "1")
    end

  end
end
