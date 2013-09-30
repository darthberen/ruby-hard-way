#!/usr/bin/env ruby
# Author: Matt Price
# Created on: 9.29.2013
# From: http://ruby.learncodethehardway.org/book/ex37.html

# alias: creates a second name for variable
# alias_method: creates a second name for a method
# class: creates a class

class Person
    def initialize(name='You-know-who')
        # initialize is a special method that takes in the parameters
        # that were passed into new()
        @name = name # class instance variable
    end

    def setName(name)
        @name = name
    end

    def getName()
        return @name
    end

    alias :rename :setName
end

=begin
multiline comment
notice how similar ruby is to perl
=end

# END block contains code that is excuted just prior to the program ending
# standard is to use {} for singe line blocks and do-end for multiline blocks
END { puts 'Bye now.' }

matt = Person.new('Test Tube Baby')
puts "Initial name: %s" % matt.getName
matt.setName('matt')
matt.rename('Matt')
puts matt.getName()
hello_world()

# in Ruby, functions must be declared before they are used.
# however, using a BEGIN block can get around this since
# BEGIN blocks contain code that is to be executed unconditionally 
# before the program begins
BEGIN {
    def hello_world()
        puts 'Hello World!'
    end
}

# in ruby many methods/iterators can take a code block as
# part of its calling syntax - using yield will run that code block
def yield_block_example()
    puts "Start of yield block example"
    yield('example of param passing')
    puts "End of yield block example"
end

yield_block_example do
    |str|
    puts "block gives me: #{str}"
end

index = 0
while true
    if (index > 4)
        break;
    else
        puts "While loop index: #{index}"
        index += 1
    end
end

# case is basically a way to do a switch statement but works on objects, etc.
number = 11
case number
when 11
    puts "My lucky number"
when "eleven"
    puts "lucky number in a string!"
else
    puts "what you selected was lame"
end

# defined? checks to see if the expressions refers to anythings and returns information about it
puts "variable defined: #{defined? number}"
puts "class defined: #{defined? Person}"
puts "object defined: #{defined? matt}"
puts "object method defined: #{defined? matt.rename}"

# begin - denotes more of a control flow block, don't appear to be able to name it
begin
    puts "I'm a begin"
end

# ensure - similar to Java finally - always run
# else will execute only if there are no errors
# rescue - similar to Java catch - catches errors
def sample()
    begin
        puts "do something"
    rescue # can define type of error here if wanted
        puts "we hit an error!"
        retry # this will restart from the beginning of the begin body
    else
        puts "else hit"
    ensure
        puts "ensure this please"
    end
end

sample()

# next - jumps to next iteration of a loop
for i in 0..5
    if i < 2
        next
    end
    puts "Value of i is #{i}"
=begin 
    retry # using retry in a loop will restart the entire loop - in this case from 0
    if i > 2
        redo # this restarts the current iteration of the loop - in this case infinite loop is created
    end
=end
end

# nil - special object in Ruby (like null but actually has some methods)
# only nil and false are evaluated to false - everything else is true
if (!nil)
    puts "Nil evaluates to false"
    puts "Nil's class: #{nil.class}"
end

# self generally refers to the object calling it
# in the case of a class it refers to the class
class SelfExample
    def self.output
        puts "Self Example using self"
    end

    def output
        puts "Self Example without self"
    end
end

SelfExample.output
se = SelfExample.new
se.output

# super - invokes an ancesters method/function
module Vehicular
    def move_forward(n)
        @position += n
    end
end

class Vehicle
    include Vehicular
end

class Car < Vehicle
    def move_forward(n)
        puts "Vroom!"
        super
    end
end

# how to check for ancestors
puts Car.ancestors.inspect

# then - optional for multiline if statements otherwise you need it
if (2 == 2) then puts "Believe it or not 2 equals 2" end

# undef - can be used to undefine/cancel a method ex undef method-name
class A
    def a=(value)
        @value = value
    end

    def set_undef_a()
        undef a=
    end

    def return_a()
        return @value
    end
end

ex_a = A.new
ex_a.a=('1')
puts ex_a.return_a
ex_a.set_undef_a
begin
    puts ex_a.a=('2')
    puts ex_a.return_a
rescue
    puts "a= is now undefined"
end

puts "there is even an unless" unless false

index = 0
until index >= 4
    puts "until index is #{index}"
    index += 1
end

# constant example (note that classes/modules follow the same naming convention)
PI = 3.14
MyName = "Matt"

puts "Pi is #{PI} and my name is #{MyName}"

# basic data types in Ruby are Numeric (Fixnum, Integer, Float, Bignum), String, Array, Hash, Object, Symbol, Range, RegExp

# inclusive of final number
for i in 0..3
    puts "#{i}"
end

# three dots (...) is not inclusive of final number
for i in 0...3
    puts "#{i}"
end

# equality methods
# a == b: are a and b equal
# a.eq? b: are a and b equal (might be more strict)
# a.equal? b: are a and b the same object
# a === b: does a match b - generally used in case statements
# note: == and eq? are aliases to equal? for class Object so you need to override if you want them to mean something else

# hash examples
names = Hash.new
names[1] = "Matt"
names['fake'] = "Jim"
puts names

languages = {
    'perl'      => 'awesome',
    'ruby'      => 'not bad',
    'C/C++'     => 'low level baby'
}
puts languages
puts "perl is %s" % languages['perl']

