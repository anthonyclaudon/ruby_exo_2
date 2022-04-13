def lancement
  niveau = 1
  jets = 0
  while niveau < 10 do
     number = rand 1..6

     case number
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
     jets += 1
  end
  return jets
end

def average_finish_time(total)
   average = total / 100
   puts "La moyenne est de : #{average}"
end

total = 0

100.times do |i|
    total += lancement
end

average_finish_time(total)