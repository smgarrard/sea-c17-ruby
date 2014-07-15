# Section 5.6 on page 25
# 4 points
# Write a program that asks for a person’s favorite number. Have your program
# add 1 to the number, and then suggest the result as a bigger and better
# favorite number. (Do be tactful about it, though.)
puts 'What is your favorite number?'
fav_num = gets.chomp
better_num_as_string = (fav_num.to_i + 1).to_s
puts 'I think ' + better_num_as_string + ' is bigger and better! What do you think?'