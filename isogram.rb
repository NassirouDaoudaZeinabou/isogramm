def isogram?(input)
   
    
      mots=input.gsub(/[?:!,]/,' ').downcase
     #créer un ensemble de caracteres 
     char_set=Set.new
     #Itérer à travers chaque caractèree et vérifier les doublons 
     mots.each_char do |char|
      return false if char_set.include?(char)
      char_set.add(char)
     end 
     true
    end
    puts "Entrer des phrases ou des mots pour vérifier si ils sont des isograms tapez -1 pour quitter"
    loop do 
      print "Entrer une phrase:"
      input=gets.chomp
      break if input=="-1"
      if isogram?(input)
        puts "#{input.inspect} est  un isogram"
      else
        puts "#{input.inspect} n'est pas un isogram"
end
end
puts"fin de verification"