#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.23.2013
# From: http://ruby.learncodethehardway.org/book/ex9.html

# Here's some new strange stuff, remember type it exactly.

days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

puts "Here are the days: ", days
puts "Here are the months: ", months

puts <<PARAGRAPH
There's something going on here.
With the PARAGRAPH thing
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
PARAGRAPH

# does it have to be PARAGRAPH?
puts <<TEST
Can I type whatever?
The answer is yes.
#{days}
days
It appears to support string interpolation but not variables.
Which makes sense...how else would you tell a string from a var?
TEST
