require 'pry'

#we start off with nothing until initial_investment
@redeemed_bottles = 0
@total_bottles = 0
@empties = 0
@caps = 0


#this works
def initial_investment(dollars)
	@total_bottles = dollars / 2 #purchased bottles at two bucks each
end

#this works
def drink
	@empties = @empties + @total_bottles 
	@caps = @caps + @total_bottles
end

#drink again to use @redeemed_bottles numbers
def drink_again
	@empties = @empties + @redeemed_bottles
	@caps = @caps + @redeemed_bottles
end

#this works
def recycle
	@redeemed_bottles = (@empties / 2) + (@caps / 4)
	@total_bottles = @total_bottles + @redeemed_bottles
end

def remainders
	@remaining_caps = (@caps % 4)
	@remaining_empties = (@empties % 2)
	@empties = @remaining_empties
	@caps = @remaining_caps
end

puts "How much do you want to spend?"
dollars = gets.chomp.to_i
initial_investment(dollars)
puts "$#{dollars} buys you #{@total_bottles} bottles of pop."
puts "Press ENTER to drink them all."
gets.chomp
drink

recycle

remainders

until @redeemed_bottles == 0
	drink_again
	recycle
	remainders
end

puts "#{@total_bottles} is the total number of bottles you can get from your initial investment."
puts "#{@remaining_empties} empty bottle(s) remain." 
puts "#{@remaining_caps} cap(s) remain."



