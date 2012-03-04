require 'spec_helper'

describe "baseballs/edit" do
  before(:each) do
    @baseball = assign(:baseball, stub_model(Baseball,
      :runs => "MyString",
      :hits => "MyString"
    ))
  end

  it "renders the edit baseball form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => baseballs_path(@baseball), :method => "post" do
      assert_select "input#baseball_runs", :name => "baseball[runs]"
      assert_select "input#baseball_hits", :name => "baseball[hits]"
    end
  end
end
