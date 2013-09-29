#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.27.2013
# From: http://ruby.learncodethehardway.org/book/ex16.html

filename = ARGV.first
script = $0

target = File.open(filename, 'r')
puts "We're going to erase #{filename}."
puts "It contains\n%s" % target.read
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "?"
STDIN.gets

puts "Opening the file..."
target = File.open(filename, "w") # a will append to the file

# You really don't need these lines if opening the file with write mode
# puts "Truncating the file.  Goodbye!"
# target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

write_format = "%s\n%s\n%s\n"
target.write(write_format % [
    line1,
    line2,
    line3
])

puts "And finally, we close it."
target.close()
