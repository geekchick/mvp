require 'spec_helper'

describe "basketballs/edit" do
  before(:each) do
    @basketball = assign(:basketball, stub_model(Basketball,
      :ppg => "MyString",
      :rpg => "MyString",
      :apg => "MyString"
    ))
  end

  it "renders the edit basketball form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => basketballs_path(@basketball), :method => "post" do
      assert_select "input#basketball_ppg", :name => "basketball[ppg]"
      assert_select "input#basketball_rpg", :name => "basketball[rpg]"
      assert_select "input#basketball_apg", :name => "basketball[apg]"
    end
  end
end
