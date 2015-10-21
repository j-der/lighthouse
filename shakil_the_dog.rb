# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby shakil_the_dog.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your dog (named Shakil).
 
# You'll probably want to write other methods, but this 
# encapsulates the core dog logic

def shakil_the_dog
  while true
    puts "What do you want to do? Woof, Shakil, Meow, Treat, or Go Away?"
    input = gets.chomp
    input.downcase!

    case
      when (input.include? "woof") then puts "Shakil says WOOF WOOF WOOF."
      when (input.include? "shakil" && "stop") then puts "Shakil looks at you with shame and guilt and says nothing."
      when (input.include? "meow") then puts "Shakil's eyes grow dark and he says woof woof woof woof woof!"
      when (input.include? "treat") then puts "Shakil salivates quietly."
      when (input.include? "go away") then puts "Shakil whimpers and leaves the room."; break
      else puts "Shakil's ears twitch and he says woof."
    end
  end
end
 

shakil_the_dog










