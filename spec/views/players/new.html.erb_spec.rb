require 'spec_helper'

describe "players/new" do
  before(:each) do
    assign(:player, stub_model(Player,
      :name => "MyString",
      :country => "MyString",
      :sport => "MyString",
      :height => "MyString",
      :weight => "MyString",
      :vid_url => "MyString",
      :profile_image => "MyString"
    ).as_new_record)
  end

  it "renders new player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => players_path, :method => "post" do
      assert_select "input#player_name", :name => "player[name]"
      assert_select "input#player_country", :name => "player[country]"
      assert_select "input#player_sport", :name => "player[sport]"
      assert_select "input#player_height", :name => "player[height]"
      assert_select "input#player_weight", :name => "player[weight]"
      assert_select "input#player_vid_url", :name => "player[vid_url]"
      assert_select "input#player_profile_image", :name => "player[profile_image]"
    end
  end
end
