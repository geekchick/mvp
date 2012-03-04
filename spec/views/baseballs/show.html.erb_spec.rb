require 'spec_helper'

describe "baseballs/show" do
  before(:each) do
    @baseball = assign(:baseball, stub_model(Baseball,
      :runs => "Runs",
      :hits => "Hits"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Runs/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hits/)
  end
end
