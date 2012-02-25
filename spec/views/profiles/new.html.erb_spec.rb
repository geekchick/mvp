require 'spec_helper'

describe "profiles/new" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :name => "MyString",
      :country => "MyString",
      :sport => "MyString",
      :height => "MyString",
      :weight => "MyString",
      :vid_url => "MyString",
      :profile_image => "MyString"
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path, :method => "post" do
      assert_select "input#profile_name", :name => "profile[name]"
      assert_select "input#profile_country", :name => "profile[country]"
      assert_select "input#profile_sport", :name => "profile[sport]"
      assert_select "input#profile_height", :name => "profile[height]"
      assert_select "input#profile_weight", :name => "profile[weight]"
      assert_select "input#profile_vid_url", :name => "profile[vid_url]"
      assert_select "input#profile_profile_image", :name => "profile[profile_image]"
    end
  end
end
