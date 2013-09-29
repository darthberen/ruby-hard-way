#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.27.2013
# From: http://ruby.learncodethehardway.org/book/ex15.html

require 'time'

filename = ARGV.first

prompt = '> '
txt = File.open(filename)

puts "Here's your file: #{filename}"
puts txt.read()

puts "Absolute file path: " + File.absolute_path(txt)
puts "Last access time: " + File.atime(txt).httpdate
puts "File size: #{File.size(txt)} bytes"
txt.close()
# puts "I'll also ask you to type it again:"
# print prompt
# file_again = STDIN.gets.chomp()

# txt_again = File.open(file_again)

# puts txt_again.read()
# txt_again.close()
