def dice(nombre)
  puts
  case nombre
  when 1
     puts "1"
  when 2
     puts "2"
  when 3
     puts "3"
  when 4
     puts "4"
  when 5
     puts "5"
  when 6
     puts "6"
  else
     puts "Tu fait 7 avec un seul dé ? T'es bizarre mais ok."
     $replay = false
  end
  puts
end

def perform
  $replay = true
  niveau = 1

  while $replay do
     face_du_de = rand 1..6
     puts "Votre tirage de dé: "+face_du_de.to_s
     dice(face_du_de)

     case face_du_de
     when 1
         if niveau > 1
           niveau -= 1 # On descend d'un étage
         else
           niveau = 1
         end
     when 5, 6
         niveau += 1 # On monte d'un étage
     else
         # On ne bouge pas
     end

     if niveau == 10
         puts "Vous avez atteint le sommet de la pyramide !"
         $replay = false
     else
         print "Voulez vous relancez le dé (o / n) ?"
         $replay = ((gets.chomp) == "o")
     end
  end
  puts "Merci d'avoir joué !"
end

perform