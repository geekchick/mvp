require "spec_helper"

describe BaseballProfilesController do
  describe "routing" do

    it "routes to #index" do
      get("/baseball_profiles").should route_to("baseball_profiles#index")
    end

    it "routes to #new" do
      get("/baseball_profiles/new").should route_to("baseball_profiles#new")
    end

    it "routes to #show" do
      get("/baseball_profiles/1").should route_to("baseball_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/baseball_profiles/1/edit").should route_to("baseball_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/baseball_profiles").should route_to("baseball_profiles#create")
    end

    it "routes to #update" do
      put("/baseball_profiles/1").should route_to("baseball_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/baseball_profiles/1").should route_to("baseball_profiles#destroy", :id => "1")
    end

  end
end
