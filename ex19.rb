#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.28.2013
# From: http://ruby.learncodethehardway.org/book/ex19.html

def cheese_and_crackers(cheese_count, boxes_of_crackers)
    puts "You have #{cheese_count} cheeses!"
    puts "You have #{boxes_of_crackers} boxes of crackers!"
    puts "Man that's enough for a party!"
    puts "Get a blanket."
    puts # a blank line
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers+ 1000)

def charles_math(math, charles)
    puts "some of these mathes #{math} my main man #{charles} no like"
end

charles_math(1, "charles")
charles_math(1 + 1, "charles")
charles_math(1, "cha" + "/rles")
charles_math(1 / 6.0, "charles")
charles_math("1 + 1 = %d" % (1 + 1), "charles")
charles_math(1, "%s%d" % ["charles", 11])
charles_math("%d + %f = %f" % [1, 1.1, 1 + 1.1], "charles")
