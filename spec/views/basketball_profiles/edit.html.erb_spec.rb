require 'spec_helper'

describe "basketball_profiles/edit" do
  before(:each) do
    @basketball_profile = assign(:basketball_profile, stub_model(BasketballProfile,
      :ppg => "MyString",
      :rpg => "MyString",
      :apg => "MyString"
    ))
  end

  it "renders the edit basketball_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => basketball_profiles_path(@basketball_profile), :method => "post" do
      assert_select "input#basketball_profile_ppg", :name => "basketball_profile[ppg]"
      assert_select "input#basketball_profile_rpg", :name => "basketball_profile[rpg]"
      assert_select "input#basketball_profile_apg", :name => "basketball_profile[apg]"
    end
  end
end
