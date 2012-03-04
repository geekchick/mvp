require 'spec_helper'

describe "baseball_profiles/show" do
  before(:each) do
    @baseball_profile = assign(:baseball_profile, stub_model(BaseballProfile,
      :hits => "Hits",
      :runs => "Runs",
      :homeruns => "Homeruns"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hits/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Runs/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Homeruns/)
  end
end
