#!/usr/bin/env ruby
#
# Section 9.5 on page 68
# 4 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer bewteen 1 and
# 3000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   modern_roman_numeral(9)
#
# should return
#
#   "IX"
#
# Hint: Run the program from the shell like this:
#
#   $ ruby 5_modern_roman_numerals.rb 9
#   IX

def modern_roman_numeral(num)

  (num / 1000).times { print "M" }
  num_left = num % 1000

  (num_left / 900).times { print "CM" }
  num_left = num_left % 900

  (num_left / 500).times { print "D" }
  num_left = num_left % 500

  (num_left / 100).times { print "C" }
  num_left = num_left % 100

  (num_left / 90).times { print "XC" }
  num_left = num_left % 90

  (num_left / 50).times { print "L" }
  num_left = num_left % 50

  (num_left / 10).times { print "X" }
  num_left = num_left % 10

  (num_left / 9).times { print "IX" }
  num_left = num_left % 9

  (num_left / 5).times { print "V" }
  num_left = num_left % 5

  (num_left / 1).times { print "I" }

  return
end

input = ARGV[0].to_i

if input <= 0 || input > 3000
  puts "Usage: 5_modern_roman_numerals [1-3000]"
  exit
end

puts modern_roman_numeral(input)
