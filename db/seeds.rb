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
  {:name => 'Supplies'}#no comma to end
  ])
  
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
  {:name => 'Coke Zero', :category_id => '3', :unit => '1.5 lt Bottles'}#no comma to end
  ])