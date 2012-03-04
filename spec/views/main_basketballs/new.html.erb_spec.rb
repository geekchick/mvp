require 'spec_helper'

describe "main_basketballs/new" do
  before(:each) do
    assign(:main_basketball, stub_model(MainBasketball,
      :ppg => "MyString",
      :rpg => "MyString",
      :apg => "MyString"
    ).as_new_record)
  end

  it "renders new main_basketball form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => main_basketballs_path, :method => "post" do
      assert_select "input#main_basketball_ppg", :name => "main_basketball[ppg]"
      assert_select "input#main_basketball_rpg", :name => "main_basketball[rpg]"
      assert_select "input#main_basketball_apg", :name => "main_basketball[apg]"
    end
  end
end
