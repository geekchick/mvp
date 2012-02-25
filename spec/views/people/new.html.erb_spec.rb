require 'spec_helper'

describe "people/new" do
  before(:each) do
    assign(:person, stub_model(Person,
      :name => "MyString",
      :country => "MyString",
      :sport => "MyString",
      :height => "MyString",
      :weight => "MyString",
      :vid_url => "MyString",
      :profile_image => "MyString"
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path, :method => "post" do
      assert_select "input#person_name", :name => "person[name]"
      assert_select "input#person_country", :name => "person[country]"
      assert_select "input#person_sport", :name => "person[sport]"
      assert_select "input#person_height", :name => "person[height]"
      assert_select "input#person_weight", :name => "person[weight]"
      assert_select "input#person_vid_url", :name => "person[vid_url]"
      assert_select "input#person_profile_image", :name => "person[profile_image]"
    end
  end
end
