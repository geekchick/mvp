require 'spec_helper'

describe "baseball_profiles/edit" do
  before(:each) do
    @baseball_profile = assign(:baseball_profile, stub_model(BaseballProfile,
      :hits => "MyString",
      :runs => "MyString",
      :homeruns => "MyString"
    ))
  end

  it "renders the edit baseball_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => baseball_profiles_path(@baseball_profile), :method => "post" do
      assert_select "input#baseball_profile_hits", :name => "baseball_profile[hits]"
      assert_select "input#baseball_profile_runs", :name => "baseball_profile[runs]"
      assert_select "input#baseball_profile_homeruns", :name => "baseball_profile[homeruns]"
    end
  end
end
