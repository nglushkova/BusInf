require "spec_helper"

describe ModuleOfDisciplinesController do
  describe "routing" do

    it "routes to #index" do
      get("/module_of_disciplines").should route_to("module_of_disciplines#index")
    end

    it "routes to #new" do
      get("/module_of_disciplines/new").should route_to("module_of_disciplines#new")
    end

    it "routes to #show" do
      get("/module_of_disciplines/1").should route_to("module_of_disciplines#show", :id => "1")
    end

    it "routes to #edit" do
      get("/module_of_disciplines/1/edit").should route_to("module_of_disciplines#edit", :id => "1")
    end

    it "routes to #create" do
      post("/module_of_disciplines").should route_to("module_of_disciplines#create")
    end

    it "routes to #update" do
      put("/module_of_disciplines/1").should route_to("module_of_disciplines#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/module_of_disciplines/1").should route_to("module_of_disciplines#destroy", :id => "1")
    end

  end
end
