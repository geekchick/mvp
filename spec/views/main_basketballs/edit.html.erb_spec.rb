require 'spec_helper'

describe "main_basketballs/edit" do
  before(:each) do
    @main_basketball = assign(:main_basketball, stub_model(MainBasketball,
      :ppg => "MyString",
      :rpg => "MyString",
      :apg => "MyString"
    ))
  end

  it "renders the edit main_basketball form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => main_basketballs_path(@main_basketball), :method => "post" do
      assert_select "input#main_basketball_ppg", :name => "main_basketball[ppg]"
      assert_select "input#main_basketball_rpg", :name => "main_basketball[rpg]"
      assert_select "input#main_basketball_apg", :name => "main_basketball[apg]"
    end
  end
end
