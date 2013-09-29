#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.27.2013
# From: http://ruby.learncodethehardway.org/book/ex17.html

from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how?
indata = File.open(from_file).read()
# indata = input.read()

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort"
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "Alright, all done."

output.close()
# indata.close()

# single line
# File.open(ARGV[1], 'w').write(File.open(ARGV[0]).read())
