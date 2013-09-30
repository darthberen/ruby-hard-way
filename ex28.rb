#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.29.2013
# From: http://ruby.learncodethehardway.org/book/ex28.html

puts (true and true) # true
puts (false and true) # false
puts (1 == 1 and 2 == 1) # false
puts ("test" == "test") # true
puts (1 == 1 or 2 != 1) # true
puts (true and 1 == 1) # true
puts (false and 0 != 0) # false
puts (true or 1 == 1) # true
puts ("test" == "testing") # false
puts ("test" == 1) # false
puts (not (true and false)) # true
puts (not (1 == 1 and 0 != 1)) # false
puts (not (10 == 1 or 1000 == 1000)) # false
puts (not (1 != 10 or 3 == 4)) # false
puts (not ("testing" == "testing" and "Zed" == "Cool Guy")) # true
puts (1 == 1 and not ("testing" == 1 or 1 == 0)) # true
puts ("chunky" == "bacon" and not (3 == 4 or 3 == 3)) # false
puts (3 == 3 and not ("testing" == "testing" or "Ruby" == "Fun")) # false

puts (1 == 1 || 2 == 3)
puts (1 == 1 && 2 == 3)
# http://devblog.avdi.org/2010/08/02/using-and-and-or-in-ruby/
# and, or, &&, and || basically like Perl use
# use and/or for control flow (lower precedence)
# use &&/|| for boolean logic (higher precedence)
