#!/usr/bin/env ruby
#
# Section 8.3 on page 56
# 4 points
#
# Rewrite your table of contents program on page 32. Start the program with an
# array holding all of the information for your table of contents (chapter
# names, page numbers, and so on). Then print out the information from the array
# in a beautifully formatted table of contents like this:
#
#                 Table of Contents
#
# Chapter 1:  Getting Started                page  1
# Chapter 2:  Numbers                        page  9
# Chapter 3:  Letters                        page 13

title = "Table of Contents"
chapter_1 = ["Chapter 1:  Getting Started", "page  1"]
chapter_2 = ["Chapter 2:  Numbers", "page  9"]
chapter_3 = ["Chapter 3:  Letters", "page 13"]

table_of_contents = [title, chapter_1, chapter_2, chapter_3]

puts table_of_contents[0].center(50)
table_of_contents.delete_at(0)
table_of_contents.each do |x|
  puts x[0].ljust(30) + x[1].rjust(20)
end
