
def size()
	s = 1 + rand(3)
	if 
		s == 1
		s = "small"
		@price = 6
	elsif 
		s == 2
		s = "medium"
		@price = 9
	else 
		s = "large"
		@price = 12
	end
	puts s
end

def crust() # thin, regular, stuffed
	x = 1 + rand(3)
		if 
			x == 1
			x = "thin"
		    @p1 = 1
		elsif 
			x == 2
			x = "regular"
			@p1 = 0
		else
			x = "stuffed"
			@p1 = 2
		end
	puts x
end

def meats() # sausage, pepperoni, hamburger
	sausage?()
	pepperoni?()
	hamburger?()
	end
	
	@p2 = 0

	def sausage?()
		if 1 == [1,2].sample
			print "sausage\n"
			@p2 =+ 1
		end
	end

	def pepperoni?()
		if 1 == [1,2].sample
	 		print "pepperoni\n"
	 		@p2 =+ 0.50
		end
	end
		
	def hamburger?()
		if 1 == [1,2].sample
			print "hamburger\n"
			@p2 =+ 1
		end
	end

def veggies()# green peppers, bannana peppers, mushrooms
	
	veggies = []
	
	@p3 = 0

	def g_peppers?	
		if 1 == [1,2].sample
			puts "green peppers"
			@p3 =+ 0.50
		end
	end
	veggies << g_peppers?
	
	def b_peppers?
		if 1 == [1,2].sample
			puts "bannana peppers"
			@p3 =+ 0.75
		end
	end
	veggies << b_peppers?
	
	def mushrooms?
		if 1 == [1,2].sample
			puts "mushrooms"
			@p3 =+ 1
		end
	end
	
	veggies << mushrooms?
end

def sauces() # sauce, no sauce

	y =  1 + rand(3)
	if 
		y == 1
		y = "normal"
		@p4 = 0
	elsif 
		y == 2
		y = "bbq"
		@p4 = 1.50
	else
		y = "alfredo"
		@p4 = 1.25
	end
	puts y
end
def special() #extra sauce, extra cheese, extra toppings
 	
	@p5 = 0

 	special = []

 	def extra_sauce?
		if 1 == [1,2,3].sample
 			puts "extra sauce"
 			@p5 =+ 1.25
 		end
	end
special << extra_sauce?

	def extra_cheese?
		if 1 == [1,2,3].sample
			puts "extra cheese"
			@p5 =+ 1.50
		end
	end

special << extra_cheese?

	def extra_toppings?
		if 1 == [1,2,3].sample
			puts "extra toppings"
			@p5 =+ 1.75
		end
	end
	special << extra_toppings?

end

def pizza # size, crust, meats, veggies, sauces, special
	size
	crust
	meats
	veggies
	sauces
	special
end

def price
p @price + @p1 + @p2 + @p3 + @p4 + @p5
end
def order
	puts "How many would you like?"
	(gets.chomp.to_i).times do 
		pizza
		
		price

		puts ""
	
	end
end

order