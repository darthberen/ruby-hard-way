#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.23.2013
# From: http://ruby.learncodethehardway.org/book/ex10.html

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cow = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_HEREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cow

random = "I am\na \"combo\" of %02.3f %s.\n\tWhy?\n\t\tBecause I could"

puts random % [
    1.2,
    "strings"
]

