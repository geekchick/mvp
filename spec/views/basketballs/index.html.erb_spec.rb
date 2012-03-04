require 'spec_helper'

describe "basketballs/index" do
  before(:each) do
    assign(:basketballs, [
      stub_model(Basketball,
        :ppg => "Ppg",
        :rpg => "Rpg",
        :apg => "Apg"
      ),
      stub_model(Basketball,
        :ppg => "Ppg",
        :rpg => "Rpg",
        :apg => "Apg"
      )
    ])
  end

  it "renders a list of basketballs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ppg".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rpg".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Apg".to_s, :count => 2
  end
end
