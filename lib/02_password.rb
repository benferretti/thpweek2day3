def creation_mdp
	puts "Créez votre mdp"
	mdp = gets.chomp
	puts "mdp créé"
	return mdp
end

def test_login(mdp)
	val = 0
	loop do
		puts "Entrez votre mdp :"
		testmdp = gets.chomp
		if (testmdp == mdp)
			val = 1
			puts "mdp ok"
			break
		else 
			puts "mdp erroné"
		end
	end
	return val
end

def welcome(val)
	if (val == 1)
		puts"."
		puts"."
		puts"."
		puts"."
		puts"Code secret : A3D87GV"
	end
end

def perform
	mdp = creation_mdp
	test = test_login(mdp)
	welcome(test)
end

perform



