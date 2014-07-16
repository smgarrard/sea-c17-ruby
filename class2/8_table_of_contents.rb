# Section 6.2 on page 32
# 4 points
#
# Here’s something for you to do in order to play around more with center,
# ljust, and rjust: write a program that will display a table of contents so
# that it looks like this:
#
#                 Table of Contents
#
# Chapter 1:  Getting Started                page  1
# Chapter 2:  Numbers                        page  9
# Chapter 3:  Letters                        page 13

full_width = 50
left_width = 30
right_width = 20

puts 'Table of Contents'.center(full_width)
puts
puts 'Chapter 1:  Getting Started'.ljust(left_width) + 'page  1'.rjust(right_width)
puts 'Chapter 2:  Numbers'.ljust(left_width) + 'page  9'.rjust(right_width)
puts 'Chapter 3:  Letters'.ljust(left_width) + 'page 13'.rjust(right_width)
