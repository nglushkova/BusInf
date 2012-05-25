require "spec_helper"

describe CompetencesController do
  describe "routing" do

    it "routes to #index" do
      get("/competences").should route_to("competences#index")
    end

    it "routes to #new" do
      get("/competences/new").should route_to("competences#new")
    end

    it "routes to #show" do
      get("/competences/1").should route_to("competences#show", :id => "1")
    end

    it "routes to #edit" do
      get("/competences/1/edit").should route_to("competences#edit", :id => "1")
    end

    it "routes to #create" do
      post("/competences").should route_to("competences#create")
    end

    it "routes to #update" do
      put("/competences/1").should route_to("competences#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/competences/1").should route_to("competences#destroy", :id => "1")
    end

  end
end
