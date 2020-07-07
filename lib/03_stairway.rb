def jeu (c, w, i, tour)
	average = 0.0
	tour.times do
		rand = rand(1..6)
		c = c + 1
		puts "----------------"
		puts "Tour numéro #{c}"	
		#puts "#{rand}"
		if (i<10)
			if (rand == 5 || rand == 6)
					#puts"Tu avances d'une marche"
					i=i+1
					#puts"Tu es actuellement sur la marche #{i}"
					if (i==10)
						#puts "BRAVO TU AS GAGNE"
						#puts"C'est reparti, tu es de retour sur la marche 1"
						w = w + 1
						i = 1
					end
			elsif (rand == 1)
				if (i>1)
					#puts"Tu descends d'une marche"
					i=i-1
					#puts"Tu es actuellement sur la marche #{i}"
				else
					#puts"Rien ne se passe"
					#puts"Tu es toujours sur la marche #{i}"
				end
			else
					#puts"Rien ne se passe"
					#puts"Tu es toujours sur la marche #{i}"
			end
		end
		puts "Manches gagnées : #{w}"
		puts ""
	end
	return w, c
end

def average_finish_time
	puts "combien de tours ?"
	tour = gets.chomp.to_i
	puts ""
	(w, c) = jeu(0, 0.0, 1, tour)
	c.to_f
	average = c / w
	if (average > 0)
		puts "Moyenne de tours pour gagner : #{average.round}"
	else
		puts "Impossible de calculer la moyenne de tours pour gagner"
	end
	puts ""
end

average_finish_time


