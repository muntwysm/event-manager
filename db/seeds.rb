# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
categories = Category.create([
  {:name => 'Volunteer'},
  {:name => 'Food'},
  {:name => 'Drink'},
  {:name => 'Supplies'}])
  
items = Item.create([
  {:name => 'Coke', :category_id => '3', :unit => '1.5 lt Bottles'},
  {:name => 'Fanta', :category_id => '3', :unit => '1.5 lt Bottles'},
  {:name => 'Chips/Crips', :category_id => '2', :unit => 'Large Bags'},
  {:name => 'Bananas', :category_id => '2', :unit => 'Kilos'},
  {:name => 'Apples', :category_id => '2', :unit => 'Kilos'},
  {:name => 'Paper plates', :category_id => '4', :unit => '20 Pack'},
  {:name => 'Cups', :category_id => '4', :unit => '20 Pack'},
  {:name => 'Volunteer A', :category_id => '1', :unit => 'People'},
  {:name => 'Volunteer B', :category_id => '1', :unit => 'People'},
  {:name => 'Volunteer C', :category_id => '1', :unit => 'People'},
  {:name => 'Volunteer D', :category_id => '1', :unit => 'People'},
  {:name => 'Coke Zero', :category_id => '3', :unit => '1.5 lt Bottles'}])

locations = Location.create([
	{:name => 'ECC - Kilchberg', :address => 'Seestrasse 169, 8802 Kilchberg', :map => 'http://goo.gl/maps/rIHHh'},
	{:name => 'LS - Waedenswil', :address => 'Steinacherstrasse 140, 8820 Waedenswil', :map => 'http://goo.gl/maps/rpVXb'},
	{:name => 'MS - Kilchberg', :address => 'Nidelbadstrasse 49, Kilchberg 8802', :map => 'http://goo.gl/maps/eKjHh'},
	{:name => 'LS & MS - Baden', :address => 'Burghaldenstrasse 6, 5400 Baden', :map => 'http://goo.gl/maps/JnRud'},
	{:name => 'US - Adliswil', :address => 'Eichenweg 2, 8134 Adliswil', :map => 'http://goo.gl/maps/46rLO'},
	{:name => 'Im Brandt', :address => 'Bodenstrasse 19, 8800 Thalwil', :map => 'http://goo.gl/maps/5rF26'}])

events = Event.create([
	{:name => 'Spring Dance', :location_id => '3', :date => DateTime.strptime("28/04/2013 19:00", "%d/%m/%Y %H:%M")},
	{:name => 'End of year BBQ', :location_id => '1', :date => DateTime.strptime("15/06/2013 12:30", "%d/%m/%Y %H:%M")}])



