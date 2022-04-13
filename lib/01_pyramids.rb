def demi_pyramide
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">"
	nombre = gets.chomp.to_i
	puts "Voici la pyramide :"

	for i in 1..nombre
		block = '#' * i
		espace = ' ' * (nombre - i)
	    puts "#{espace}#{block}"
	end
end

def full_pyramide
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">"
	nombre = gets.chomp.to_i
	puts "Voici la pyramide :"

	for i in 1..nombre
		calc = 2 * i - 1
		block = '#' * calc
		espace = ' ' * (nombre - i)
	puts "#{espace}#{block}"
    end
end

def pyramide_chelou
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">"
	nombre = gets.chomp.to_i

	while nombre.even?
		puts "Pas de nombre paire s'il vous plait!"
		print "> "
		nombre = gets.chomp.to_i
	end

    puts "Voici la pyramide :"

    for c in 1..nombre
    	if c > (nombre / 2)
    	   break
    	end
    	calc = 2 * c - 1
    	block = '#' * calc
    	espace = ' ' * (nombre-c)
        puts "#{espace}#{block}"
    end

    d = (nombre / 2) + 1
    while d > 0
    	calc = 2 * d - 1
    	block = '#' * calc
    	espace = ' ' * (nombre - d )
    	puts "#{espace}#{block}"
    	d -= 1
    end
end

puts "Quelle sorte de pyramide voulez-vous voir? \n 1 = demi_pyramide \n 2 = full_pyramide \n 3 = pyramide_chelou"
choix = gets.chomp.to_i

if choix == 1
    demi_pyramide
elsif choix == 2
    full_pyramide
elsif choix == 3
    pyramide_chelou
else
    puts "Erreur, veuillez choisir un de ces chiffres!"
end