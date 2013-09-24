#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.22.2013
# From: http://ruby.learncodethehardway.org/book/ex3.html

puts "I will now count my chickens:"

puts "Hens", 25 + 30 / 6.0 # 25 + (30 / 6)
# note: adding the zero (.0) allows for floats

puts "Roosters", 100 - 25 * 3 % 4 # 100 - ((25 * 3) % 4)

puts "Now I will count the eggs:"

puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4.0 + 6 
# note: integer division will always take the floor

puts "Is it true that 3 + 2 < 5 - 7?"

puts 3 + 2 < 5 - 7 # returns boolean

puts "What is 3 + 2?", 3 + 2
puts "What is 5 - 7?", 5 - 7

puts "Oh, that's why it's false."

puts "How about some more."

puts "Is it greater?", 5 > -2
puts "Is it greater or equal?", 5 >= -2
puts "Is it less or equal?", 5 <= -2

# rough precedence: */%, +-, <>=
