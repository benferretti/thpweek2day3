def ask_fname
	fname = gets.chomp
	return fname
end



def say_hello(fname)
	
    puts "Bonjour, #{fname} !"
end



def perform
	first_name = ask_fname
	say_hello(first_name)
end



perform