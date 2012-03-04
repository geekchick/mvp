require 'spec_helper'

describe "Basketballs" do
  describe "GET /basketballs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get basketballs_path
      response.status.should be(200)
    end
  end
end
