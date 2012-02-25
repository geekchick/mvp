require 'spec_helper'

describe "players/show" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :name => "Name",
      :country => "Country",
      :sport => "Sport",
      :height => "Height",
      :weight => "Weight",
      :vid_url => "Vid Url",
      :profile_image => "Profile Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Country/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sport/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Height/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Weight/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Vid Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Profile Image/)
  end
end
