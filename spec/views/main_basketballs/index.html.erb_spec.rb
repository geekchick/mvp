require 'spec_helper'

describe "main_basketballs/index" do
  before(:each) do
    assign(:main_basketballs, [
      stub_model(MainBasketball,
        :ppg => "Ppg",
        :rpg => "Rpg",
        :apg => "Apg"
      ),
      stub_model(MainBasketball,
        :ppg => "Ppg",
        :rpg => "Rpg",
        :apg => "Apg"
      )
    ])
  end

  it "renders a list of main_basketballs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ppg".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rpg".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Apg".to_s, :count => 2
  end
end
