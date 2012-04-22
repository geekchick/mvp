# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

#users = User.create ([ {:name => 'Jane Doe'}]) 
#Micropost.create(:content => "This is a test!!", :user => users.first)



#User.create( :name => "Jane Smith2")
Micropost.delete_all
Micropost.create(:content => "Example post")


