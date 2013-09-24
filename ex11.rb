#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.23.2013
# From: http://ruby.learncodethehardway.org/book/ex11.html

print "How old are you? "
age = gets.chomp()
print "How tall are you? "
height = gets.chomp()
print "How much do you weigh? "
weight = gets.chomp()

puts "So, you're #{age} years old, #{height} tall and #{weight} heavy."

chomp_this = " I need chomping.\n".chomp
print chomp_this + " Was I chomped?\n"
puts 'Fun fact: \'\' does not support all escape characters like \n'

# my form
print "Your name? "
name = gets.chop
puts "Believe it or not your name is " + name

