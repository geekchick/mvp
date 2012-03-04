require 'spec_helper'

describe "main_basketballs/show" do
  before(:each) do
    @main_basketball = assign(:main_basketball, stub_model(MainBasketball,
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
