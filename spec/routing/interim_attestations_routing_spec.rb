require "spec_helper"

describe InterimAttestationsController do
  describe "routing" do

    it "routes to #index" do
      get("/interim_attestations").should route_to("interim_attestations#index")
    end

    it "routes to #new" do
      get("/interim_attestations/new").should route_to("interim_attestations#new")
    end

    it "routes to #show" do
      get("/interim_attestations/1").should route_to("interim_attestations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/interim_attestations/1/edit").should route_to("interim_attestations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/interim_attestations").should route_to("interim_attestations#create")
    end

    it "routes to #update" do
      put("/interim_attestations/1").should route_to("interim_attestations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/interim_attestations/1").should route_to("interim_attestations#destroy", :id => "1")
    end

  end
end
