require 'spec_helper'

describe Recipe do
	it "can be instantiated" do
		Recipe.new.should be_an_instance_of(Recipe)
	end
end
