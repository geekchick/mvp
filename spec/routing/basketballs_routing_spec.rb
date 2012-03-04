require "spec_helper"

describe BasketballsController do
  describe "routing" do

    it "routes to #index" do
      get("/basketballs").should route_to("basketballs#index")
    end

    it "routes to #new" do
      get("/basketballs/new").should route_to("basketballs#new")
    end

    it "routes to #show" do
      get("/basketballs/1").should route_to("basketballs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/basketballs/1/edit").should route_to("basketballs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/basketballs").should route_to("basketballs#create")
    end

    it "routes to #update" do
      put("/basketballs/1").should route_to("basketballs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/basketballs/1").should route_to("basketballs#destroy", :id => "1")
    end

  end
end
