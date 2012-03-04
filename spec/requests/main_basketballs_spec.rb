require 'spec_helper'

describe "MainBasketballs" do
  describe "GET /main_basketballs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get main_basketballs_path
      response.status.should be(200)
    end
  end
end
