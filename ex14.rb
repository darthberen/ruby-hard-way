#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.25.2013
# From: http://ruby.learncodethehardway.org/book/ex14.html

user = ARGV.first
day = ARGV[1]
prompt = 'Answer> '

puts "Hi #{user}, I'm the #{$0} script on #{day}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  Nice.
MESSAGE
