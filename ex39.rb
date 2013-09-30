#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.30.2013
# From: http://ruby.learncodethehardway.org/book/ex39.html

# create a mapping of state to abbreviation
states = {
    'Oregon'        => 'OR',
    'Florida'       => 'FL',
    'California'    => 'CA',
    'New York'      => 'NY',
    'Michigan'      => 'MI', # notice how I can leave the comma here like perl
}

# some ways to view the contents of a hash
# puts states.inspect()
# puts states

# create a basic set of states and some cities in them
cities = {
    'CA'    => 'San Francisco',
    'MI'    => 'Detroit',
    'FL'    => 'Jacksonville',
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some cities
puts '-' * 10
puts "NY State has: ", cities['NY']
puts "OR State has: ", cities['OR']

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: ", states['Michigan']
puts "Florida's abbreviation is: ", states['Florida']

# do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: ", cities[states['Michigan']]
puts "Florida has: ", cities[states['Florida']]

# puts every state abbreviation
puts '-' * 10
for state, abbrev in states
    puts "%s is abbreviated %s" % [state, abbrev]
end

# puts every city in a state
puts '-' * 10
for abbrev, city in cities
    puts "%s has the city %s" % [abbrev, city]
end

# now do both at the same time
puts '-' * 10
for state, abbrev in states
    puts "%s state is abbreviated %s and has city %s" % [
        state,
        abbrev,
        cities[abbrev]
    ]
end

puts '-' * 10
# if it's not there you get nil
state = states['Texas']

if not state
    puts "Sorry, no Texas"
end

# get a city with a default value
city = cities['TX'] || 'Does Not Exist'
puts "The city for state 'TX' is: %s" % city
