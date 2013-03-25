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
  {:name => 'Coke', :category_id => '3', :unit => 'Bottles (1.5 lt)'},
  {:name => 'Fanta', :category_id => '3', :unit => 'Bottles (1.5 lt)'},
  {:name => 'Chips/Crisps', :category_id => '2', :unit => 'Bags (200 g)'},
  {:name => 'Bananas', :category_id => '2', :unit => 'Kilos'},
  {:name => 'Apples', :category_id => '2', :unit => 'Kilos'},
  {:name => 'Paper plates', :category_id => '4', :unit => 'Packets (20 pcs)'},
  {:name => 'Cups', :category_id => '4', :unit => 'Packets (20 pcs)'},
  {:name => 'Volunteer A', :category_id => '1', :unit => 'People'},
  {:name => 'Volunteer B', :category_id => '1', :unit => 'People'},
  {:name => 'Volunteer C', :category_id => '1', :unit => 'People'},
  {:name => 'Volunteer D', :category_id => '1', :unit => 'People'},
  {:name => 'Coke Zero', :category_id => '3', :unit => 'Bottles (1.5 lt)'}])

locations = Location.create([
	{:name => 'ECC - Kilchberg', :address => 'Seestrasse 169, 8802 Kilchberg', :map => 'http://goo.gl/maps/rIHHh'},
	{:name => 'LS - Waedenswil', :address => 'Steinacherstrasse 140, 8820 Waedenswil', :map => 'http://goo.gl/maps/rpVXb'},
	{:name => 'MS - Kilchberg', :address => 'Nidelbadstrasse 49, Kilchberg 8802', :map => 'http://goo.gl/maps/eKjHh'},
	{:name => 'LS & MS - Baden', :address => 'Burghaldenstrasse 6, 5400 Baden', :map => 'http://goo.gl/maps/JnRud'},
	{:name => 'US - Adliswil', :address => 'Eichenweg 2, 8134 Adliswil', :map => 'http://goo.gl/maps/46rLO'},
	{:name => 'Im Brandt', :address => 'Bodenstrasse 19, 8800 Thalwil', :map => 'http://goo.gl/maps/5rF26'}])

events = Event.create([
	{:name => 'Spring Dance', :location_id => '3', 
		:details => 'Volunteer A: 18:30 - 20:30...... Volunteer B: 20:30 - 22:30',
		:date => DateTime.strptime("28/04/2013 19:00", "%d/%m/%Y %H:%M")},
	{:name => 'End of year BBQ', :location_id => '1', :date => DateTime.strptime("15/06/2013 12:30", "%d/%m/%Y %H:%M")}])

requirements = Requirement.create ([
	{:qty => 5, :item_id => '2', :event_id => '1'},
	{:qty => 15, :item_id => '3', :event_id => '1'},
	{:qty => 3, :item_id => '4', :event_id => '1'},
	{:qty => 5, :item_id => '5', :event_id => '1'},
	{:qty => 4, :item_id => '6', :event_id => '1'},
	{:qty => 8, :item_id => '7', :event_id => '1'},
	{:qty => 2, :item_id => '8', :event_id => '1'},
	{:qty => 2, :item_id => '9', :event_id => '1'},
	{:qty => 1, :item_id => '10', :event_id => '1'},
	{:qty => 15, :item_id => '2', :event_id => '2'},
	{:qty => 25, :item_id => '3', :event_id => '2'},
	{:qty => 7, :item_id => '4', :event_id => '2'},
	{:qty => 12, :item_id => '5', :event_id => '2'},
	{:qty => 10, :item_id => '6', :event_id => '2'},
	{:qty => 20, :item_id => '7', :event_id => '2'},
	{:qty => 3, :item_id => '8', :event_id => '2'},
	{:qty => 3, :item_id => '9', :event_id => '2'},
	{:qty => 2, :item_id => '10', :event_id => '2'},
	{:qty => 5, :item_id => '1', :event_id => '1'}])

contributions = Contribution.create ([
	{:qty => 5, :item_id => '2', :event_id => '1', :contributor => 'Johnson Family', :req => '1'},
	{:qty => 15, :item_id => '3', :event_id => '1', :contributor => 'Peterson Family', :req => '1'},
	{:qty => 3, :item_id => '4', :event_id => '1', :contributor => 'Arnold Family', :req => '1'},
	{:qty => 5, :item_id => '5', :event_id => '1', :contributor => 'John Smith', :req => '1'},
	{:qty => 4, :item_id => '6', :event_id => '1', :contributor => 'Annable Samuels', :req => '1'},
	{:qty => 8, :item_id => '7', :event_id => '1', :contributor => 'Jess Taylor', :req => '1'},
	{:qty => 2, :item_id => '8', :event_id => '1', :contributor => 'David & Jenny', :req => '1'},
	{:qty => 2, :item_id => '9', :event_id => '1', :contributor => 'The Jeffersons', :req => '1'},
	{:qty => 1, :item_id => '10', :event_id => '1', :contributor => 'Johnson Family', :req => '1'},
	{:qty => 15, :item_id => '2', :event_id => '2', :contributor => 'Peterson Family', :req => '1'},
	{:qty => 25, :item_id => '3', :event_id => '2', :contributor => 'John Smith', :req => '1'},
	{:qty => 7, :item_id => '4', :event_id => '2', :contributor => 'Peterson Family', :req => '1'},
	{:qty => 12, :item_id => '5', :event_id => '2', :contributor => 'Johnson Family', :req => '1'},
	{:qty => 10, :item_id => '6', :event_id => '2', :contributor => 'Arnold Family', :req => '1'},
	{:qty => 20, :item_id => '7', :event_id => '2', :contributor => 'Arnold Family', :req => '1'},
	{:qty => 3, :item_id => '8', :event_id => '2', :contributor => '', :req => '1'},
	{:qty => 3, :item_id => '9', :event_id => '2', :contributor => 'Arnold Family', :req => '1'},
	{:qty => 2, :item_id => '10', :event_id => '2', :contributor => 'Jess Taylor', :req => '1'},
	{:qty => 5, :item_id => '1', :event_id => '1', :contributor => 'David & Jenny', :req => 1}])





