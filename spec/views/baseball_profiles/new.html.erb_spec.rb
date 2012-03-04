require 'spec_helper'

describe "baseball_profiles/new" do
  before(:each) do
    assign(:baseball_profile, stub_model(BaseballProfile,
      :hits => "MyString",
      :runs => "MyString",
      :homeruns => "MyString"
    ).as_new_record)
  end

  it "renders new baseball_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => baseball_profiles_path, :method => "post" do
      assert_select "input#baseball_profile_hits", :name => "baseball_profile[hits]"
      assert_select "input#baseball_profile_runs", :name => "baseball_profile[runs]"
      assert_select "input#baseball_profile_homeruns", :name => "baseball_profile[homeruns]"
    end
  end
end
