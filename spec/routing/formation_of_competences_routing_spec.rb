require "spec_helper"

describe FormationOfCompetencesController do
  describe "routing" do

    it "routes to #index" do
      get("/formation_of_competences").should route_to("formation_of_competences#index")
    end

    it "routes to #new" do
      get("/formation_of_competences/new").should route_to("formation_of_competences#new")
    end

    it "routes to #show" do
      get("/formation_of_competences/1").should route_to("formation_of_competences#show", :id => "1")
    end

    it "routes to #edit" do
      get("/formation_of_competences/1/edit").should route_to("formation_of_competences#edit", :id => "1")
    end

    it "routes to #create" do
      post("/formation_of_competences").should route_to("formation_of_competences#create")
    end

    it "routes to #update" do
      put("/formation_of_competences/1").should route_to("formation_of_competences#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/formation_of_competences/1").should route_to("formation_of_competences#destroy", :id => "1")
    end

  end
end
