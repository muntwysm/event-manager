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
  {:name => 'Coke Zero', :category_id => '3', :unit => '1.5 Lts'},
{:name => 'Fanta', :category_id => '3', :unit => '1.5 Lts'},
{:name => 'Fruit Juice', :category_id => '3', :unit => '1.5 Lts'},
{:name => 'Ice Tea', :category_id => '3', :unit => '1.5 Lts'},
{:name => 'Sprite', :category_id => '3', :unit => '1.5 Liter'},
{:name => 'Coke', :category_id => '3', :unit => '1.5 Lts'},
{:name => 'Still Water', :category_id => '3', :unit => '1.5L'},
{:name => 'Fizzy water', :category_id => '3', :unit => '1.5 litres'},
{:name => 'Soda Syrup', :category_id => '3', :unit => 'Bottles'},
{:name => 'Party Mix', :category_id => '2', :unit => 'Bags'},
{:name => 'Chips', :category_id => '2', :unit => 'Bags'},
{:name => 'Dips', :category_id => '2', :unit => 'Bowls'},
{:name => 'Fruit', :category_id => '2', :unit => 'Plates'},
{:name => 'Popcorn', :category_id => '2', :unit => 'Bags'},
{:name => 'Veggie Plate', :category_id => '2', :unit => 'Plate'},
{:name => 'Bread Stick', :category_id => '2', :unit => 'Packets'},
{:name => 'Mini Mars Bars', :category_id => '2', :unit => 'Bags'},
{:name => 'Mini Milky Way Bars', :category_id => '2', :unit => 'Bags'},
{:name => 'Mini Maltesers', :category_id => '2', :unit => 'Bags'},
{:name => 'Cookies', :category_id => '2', :unit => 'Packets'},
{:name => 'Pasteries', :category_id => '2', :unit => 'Bags'},
{:name => 'Cupcakes', :category_id => '2', :unit => 'Piece(s)'},
{:name => 'Pretzels', :category_id => '2', :unit => 'Bag(s)'},
{:name => 'Chocolate Bars', :category_id => '2', :unit => 'Bag'},
{:name => 'Bananas', :category_id => '2', :unit => 'Kilos'},
{:name => 'Grapes', :category_id => '2', :unit => 'Kilos'},
{:name => 'Oranges', :category_id => '2', :unit => 'Kilos'},
{:name => 'Baked Goods (Assortment)', :category_id => '2', :unit => 'Packages'},
{:name => 'Bagels', :category_id => '2', :unit => 'Packages'},
{:name => 'Pumpkin Bread', :category_id => '2', :unit => 'Loaves'},
{:name => 'Roasted Pumpkin Seeds', :category_id => '2', :unit => 'Bags'},
{:name => 'Apples', :category_id => '2', :unit => 'Apples'},
{:name => 'Christmas cookies', :category_id => '2', :unit => '1 dozen'},
{:name => 'Mandarines', :category_id => '2', :unit => 'bag'},
{:name => 'Tea Sandwiches', :category_id => '2', :unit => 'pieces'},
{:name => 'Brownies (with nuts)', :category_id => '2', :unit => 'Plate(s)'},
{:name => 'Brownies (no nuts)', :category_id => '2', :unit => 'plate(s)'},
{:name => 'Tropical Desserts', :category_id => '2', :unit => 'Servings'},
{:name => 'Tropical Desserts part 2', :category_id => '2', :unit => 'Servings'},
{:name => 'Tropical Desserts part 3', :category_id => '2', :unit => 'Servings'},
{:name => 'Tropical Desserts part 4', :category_id => '2', :unit => 'Servings'},
{:name => 'Desserts', :category_id => '2', :unit => 'Servings'},
{:name => 'Desserts 2', :category_id => '2', :unit => 'Servings'},
{:name => 'Plates', :category_id => '4', :unit => 'Packets'},
{:name => 'Napkins', :category_id => '4', :unit => 'Packets'},
{:name => 'Cups', :category_id => '4', :unit => 'Packets of 50 pieces'},
{:name => 'SodaSteam Bottles (Coop or Migro)', :category_id => '4', :unit => 'http://www.sodastream.com/bottles'},
{:name => 'Volunteer A', :category_id => '1', :unit => 'People'},
{:name => 'Volunteer B', :category_id => '1', :unit => 'People'},
{:name => 'Volunteer C', :category_id => '1', :unit => 'People'},
{:name => 'Volunteer D', :category_id => '1', :unit => 'People'}])

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
	{:qty => 4, :item_id => '6', :event_id => '1', :contributor => 'Annabel Samuels', :req => '1'},
	{:qty => 8, :item_id => '7', :event_id => '1', :contributor => 'Jess Taylor', :req => '1'},
	{:qty => 2, :item_id => '8', :event_id => '1', :contributor => 'David & Jenny', :req => '1'},
	{:qty => 2, :item_id => '9', :event_id => '1', :contributor => 'The Jeffersons', :req => '1'},
	{:qty => 1, :item_id => '10', :event_id => '1', :contributor => 'Johnson Family', :req => '1'},
	{:qty => 15, :item_id => '2', :event_id => '2', :contributor => 'Arnold Family', :req => '1'},
	{:qty => 25, :item_id => '3', :event_id => '2', :contributor => 'David Smithies', :req => '1'},
	{:qty => 7, :item_id => '4', :event_id => '2', :contributor => 'Johnson Family', :req => '1'},
	{:qty => 12, :item_id => '5', :event_id => '2', :contributor => 'Peterson Family', :req => '1'},
	{:qty => 4, :item_id => '7', :event_id => '1', :contributor => 'The Jeffersons', :req => '1'},
	{:qty => 3, :item_id => '8', :event_id => '1', :contributor => 'Jess Taylor', :req => '1'},
	{:qty => 5, :item_id => '9', :event_id => '1', :contributor => 'David & Jenny', :req => '1'},
	{:qty => 1, :item_id => '10', :event_id => '1', :contributor => 'Williams Family', :req => '1'},
	{:qty => 11, :item_id => '2', :event_id => '2', :contributor => 'Peterson Family', :req => '1'},
	{:qty => 22, :item_id => '3', :event_id => '2', :contributor => 'John Smith', :req => '1'},
	{:qty => 17, :item_id => '4', :event_id => '2', :contributor => 'Peterson Family', :req => '1'},
	{:qty => 2, :item_id => '5', :event_id => '2', :contributor => 'Johnson Family', :req => '1'},
	{:qty => 5, :item_id => '6', :event_id => '2', :contributor => 'Arnold Family', :req => '1'},
	{:qty => 2, :item_id => '7', :event_id => '2', :contributor => 'Arnold Family', :req => '1'},
	{:qty => 3, :item_id => '8', :event_id => '2', :contributor => 'David & Jenny', :req => '1'},
	{:qty => 3, :item_id => '9', :event_id => '2', :contributor => 'Arnold Family', :req => '1'},
	{:qty => 2, :item_id => '10', :event_id => '2', :contributor => 'Jess Taylor', :req => '1'},
	{:qty => 5, :item_id => '1', :event_id => '1', :contributor => 'David & Jenny', :req => '1'}])

users = User.create ([
	{:username => 'admin', :email => 'mnelson@zis.ch', 
		:password => 'foobar', 
		:password_confirmation => 'foobar'},
	{:username => 'smuntwyler', :email => 'smuntwyler@zis.ch', 
		:password => 'stefeventsmun', 
		:password_confirmation => '0WwjuIP9eh7aFMctnSz'}])



