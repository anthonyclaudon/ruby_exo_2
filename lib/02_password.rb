require "io/console"

def signup
	print "Veuillez definir un mot de passe : "

	password = STDIN.noecho(&:gets).chomp # Retire le print de la console, entre autre pour cacher le mot de passe
	puts "Mot de passe sauvegardé !"
	return password
end

def login
	password = signup

	print "Veuillez saisir votre mot de passe : "

	login = STDIN.noecho(&:gets).chomp # Retire le print de la console, entre autre pour cacher le mot de passe

    if login != password
    	puts "Mot de passe incorect"
    else
      welcome_screen # Affichage de l'écran de bienvenu
    end
    return login
end

def welcome_screen
    puts "Bienvenue sur votre session :D"
end

login