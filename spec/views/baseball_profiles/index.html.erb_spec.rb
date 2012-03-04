require 'spec_helper'

describe "baseball_profiles/index" do
  before(:each) do
    assign(:baseball_profiles, [
      stub_model(BaseballProfile,
        :hits => "Hits",
        :runs => "Runs",
        :homeruns => "Homeruns"
      ),
      stub_model(BaseballProfile,
        :hits => "Hits",
        :runs => "Runs",
        :homeruns => "Homeruns"
      )
    ])
  end

  it "renders a list of baseball_profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hits".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Runs".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Homeruns".to_s, :count => 2
  end
end
