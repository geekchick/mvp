require 'spec_helper'

describe "baseballs/index" do
  before(:each) do
    assign(:baseballs, [
      stub_model(Baseball,
        :runs => "Runs",
        :hits => "Hits"
      ),
      stub_model(Baseball,
        :runs => "Runs",
        :hits => "Hits"
      )
    ])
  end

  it "renders a list of baseballs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Runs".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hits".to_s, :count => 2
  end
end
