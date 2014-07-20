# Section 7.5 on page 49
# 4 points
#
# Write a program that asks for a starting year and an ending year and then puts
# all the leap years between them (and including them, if they are also leap
# years). Leap years are years divisible by 4 (like 1984 and 2004). However,
# years divisible by 100 are not leap years (such as 1800 and 1900) unless they
# are also divisible by 400 (such as 1600 and 2000, which were in fact leap
# years). What a mess!

puts "Starting year:"
starting_year = gets.chomp.to_i

puts "Ending year:"
ending_year = gets.chomp.to_i
puts

while starting_year <= ending_year
  if starting_year % 100 == 0 && starting_year % 400 == 0
    puts starting_year
  elsif starting_year % 4 == 0 && starting_year % 100 != 0
    puts starting_year
  end

  starting_year = starting_year + 1
end
