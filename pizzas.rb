def crust() # thin, regular, stuffed
x = 1 + rand(3)
	if 
		x == 1
		x = "thin"
	elsif 
		x == 2
		x = "regular"
	else
		x = "stuffed"
	end
	puts x
end

def meats() # sausage, pepperoni, hamburger
	meats = []

	def sausage?

		if 1 == [1,2].sample
			print "sausage\n"
		end
	end
	meats << sausage?
	def pepperoni?
		if 1 == [1,2].sample
	 		print "pepperoni\n"
		end
	end
	meats << pepperoni?
	
	def hamburger?
		if 1 == [1,2].sample
			print "hamburger\n"
		end
	end
	
	meats << hamburger?
end

def veggies()# green peppers, bannana peppers, mushrooms
	veggies = []
	
	def g_peppers?	
		if 1 == [1,2].sample
			puts "green peppers"
		end
	end
	veggies << g_peppers?
	
	def b_peppers?
		if 1 == [1,2].sample
			puts "bannana peppers"
		end
	end
	veggies << b_peppers?
	
	def mushrooms?
		if 1 == [1,2].sample
			puts "mushrooms"
		end
	end
	
	veggies << mushrooms?
end

def sauces() # sauce, no sauce
	y =  1 + rand(3)
	if 
		y == 1
		y = "normal"
	elsif 
		y == 2
		y = "bbq"
	else
		y = "alfredo"
	end
end
def special() #extra sauce, extra cheese, extra toppings
 special = []
 	def extra_sauce
		if 1 == [1,2,3].sample
 			puts "extra sauce"
 		end
	end
special << extra_sauce

	def extra_cheese
		if 1 == [1,2,3].sample
			puts "extra cheese"
		end
	end

special << extra_cheese

	def extra_toppings
		if 1 == [1,2,3].sample
			puts "extra toppings"
		end
	end
	special << extra_toppings

end

def pizza # crust, meats, veggies, sauces, special
	crust
	meats
	veggies
	sauces
	special
end

def order
	puts "How many would you like?"
	(gets.chomp.to_i).times do 
		pizza
		puts ""
	
	end
end

order