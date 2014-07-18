# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.

bye = 0
puts "Oh, hi honey!! I'm just sooo glad you called!"

while bye < 3
  response = gets.chomp

  if response == "BYE"
    bye += 1
    puts "Sorry Sonny, I just can't hear you very well.  How is school going?"
  else
    bye = 0

    if response == response.upcase
      puts "NO, NOT SINCE #{rand(21) + 1930}!"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end
end

puts "O.K. call me again soon why don't you??"
