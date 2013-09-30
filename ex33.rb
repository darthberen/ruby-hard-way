#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.29.2013
# From: http://ruby.learncodethehardway.org/book/ex33.html

# i = 0
# numbers = []

def number_count(base, top)
    numbers = []

    for i in (base..top)
        puts "At the top i is #{i}"
        numbers.push(i)

        puts "Numbers now: #{numbers}"
        puts "At the bottom i is #{i}"
    end

    return numbers
end

def number_count_with_inc(base, top, increment)
    i = base
    numbers = []

    while i < top
        puts "At the top i is #{i}"
        numbers.push(i)

        i += increment
        puts "Numbers now: #{numbers}"
        puts "At the bottom i is #{i}"
    end

    return numbers
end

numbers = number_count_with_inc(0, 11, 2)
numbers = number_count(0, 10)
puts "The numbers: "

for num in numbers
    puts num
end
