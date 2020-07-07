def ask_floor
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
	floor = gets.chomp.to_i
	return floor
end


def full_pyramid(floor)
	i = 1
	s = floor - 1
	puts "Voici la pyramide :"
	(floor/2).times do
		s.times do
			print" "
		end
		i.times do
			print"#"
		end
		(i-1).times do
			print"#"
		end
		print"\n"
		s = s - 1
		i = i + 1
	end

	
	((floor+1)/2).times do
		s.times do
			print" "
		end
		i.times do
			print"#"
		end
		(i-1).times do
			print"#"
		end
		print"\n"
		s = s + 1
		i = i - 1
	end
end


def perform
	t = ask_floor
	full_pyramid(t)
end


perform