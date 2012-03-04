require "spec_helper"

describe MainBasketballsController do
  describe "routing" do

    it "routes to #index" do
      get("/main_basketballs").should route_to("main_basketballs#index")
    end

    it "routes to #new" do
      get("/main_basketballs/new").should route_to("main_basketballs#new")
    end

    it "routes to #show" do
      get("/main_basketballs/1").should route_to("main_basketballs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/main_basketballs/1/edit").should route_to("main_basketballs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/main_basketballs").should route_to("main_basketballs#create")
    end

    it "routes to #update" do
      put("/main_basketballs/1").should route_to("main_basketballs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/main_basketballs/1").should route_to("main_basketballs#destroy", :id => "1")
    end

  end
end
