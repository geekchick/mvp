require 'spec_helper'

describe "basketball_profiles/show" do
  before(:each) do
    @basketball_profile = assign(:basketball_profile, stub_model(BasketballProfile,
      :ppg => "Ppg",
      :rpg => "Rpg",
      :apg => "Apg"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ppg/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rpg/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Apg/)
  end
end
