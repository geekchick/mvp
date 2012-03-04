require "spec_helper"

describe BasketballProfilesController do
  describe "routing" do

    it "routes to #index" do
      get("/basketball_profiles").should route_to("basketball_profiles#index")
    end

    it "routes to #new" do
      get("/basketball_profiles/new").should route_to("basketball_profiles#new")
    end

    it "routes to #show" do
      get("/basketball_profiles/1").should route_to("basketball_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/basketball_profiles/1/edit").should route_to("basketball_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/basketball_profiles").should route_to("basketball_profiles#create")
    end

    it "routes to #update" do
      put("/basketball_profiles/1").should route_to("basketball_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/basketball_profiles/1").should route_to("basketball_profiles#destroy", :id => "1")
    end

  end
end
