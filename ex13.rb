#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.25.2013
# From: http://ruby.learncodethehardway.org/book/ex13.html

first, second, third = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "Answer my question? "
response = STDIN.gets.chomp()

puts "You answered with '#{response}'"
