# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

aircrafts = [
    {:name => "Supermarine Spitfire", :role => "Fighter", :country => "United Kingdom", :year => "1938"},
    {:name => "Messerschmitt Bf 109", :role => "Fighter", :country => "Germany", :year => "1937"},
    {:name => "Hawker Hurricane", :role => "Fighter", :country => "United Kingdom", :year => "1937"},
    {:name => "Messerschmitt Me 262", :role => "Fighter", :country => "Germany", :year => "1944"},
    {:name => "Boeing B-17", :role => "Heavy-Bomber", :country => "United States", :year => "1938"}, 
    {:name => "Boeing B-29", :role => "Heavy-Bomber", :country => "United States", :year => "1944"},
    {:name => "Junkers Ju 87", :role => "Dive-Bomber", :country => "Germany", :year => "1936"},
    {:name => "Mitsubishi A6M Zero", :role => "Fighter", :country => "Japan", :year => "1940"},
    {:name => "Focke-Wulf Fw 190", :role => "Fighter", :country => "Germany", :year => "1941"},
    {:name => "North American P-51 Mustang", :role => "Fighter", :country => "United States", :year => "1942"},
]

aircrafts.each do |aircraft|
    Aircraft.create!(aircraft)
end
