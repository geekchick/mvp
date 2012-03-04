require "spec_helper"

describe BaseballsController do
  describe "routing" do

    it "routes to #index" do
      get("/baseballs").should route_to("baseballs#index")
    end

    it "routes to #new" do
      get("/baseballs/new").should route_to("baseballs#new")
    end

    it "routes to #show" do
      get("/baseballs/1").should route_to("baseballs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/baseballs/1/edit").should route_to("baseballs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/baseballs").should route_to("baseballs#create")
    end

    it "routes to #update" do
      put("/baseballs/1").should route_to("baseballs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/baseballs/1").should route_to("baseballs#destroy", :id => "1")
    end

  end
end
