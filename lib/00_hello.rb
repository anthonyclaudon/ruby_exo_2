$prenom

def dire_bonjour (first_name)
  puts "Bonjour #{first_name} !"
end

def get_prenom
    puts "Entrez votre prénom"
    $prenom = gets.chomp
    return $prenom
end

def exec
  get_prenom
  dire_bonjour($prenom)
end

exec