documentary = "Cowspericy"
drama       = "Moonlight"
comedy      = "The Big Sick"
dramedy     = "Battle of the Sexes"

puts "Do you enjoy documentaries? yes or no?"
doc_answer = gets.chomp
puts "Do you enjoy dramas ? yes or no?"
drama_answer = gets.chomp
puts "Do you enjoy comedies? yes or no?"
comedy_answer = gets.chomp


# If they answer yes to documentaries, display a message recommending the documentary to them.
if doc_answer == "yes"
  puts "My recomendation would be that you watch the movie #{documentary}"
  # If they answer no to documentaries but yes to dramas and comedies, recommend the dramedy.
elsif doc_answer == "no" && drama_answer == "yes" && comedy_answer == "yes"
  puts "My recomendation would be that you watch the movie #{dramedy}."
  #If they answer yes to only dramas, recommend the drama.
elsif doc_answer == "no" && drama_answer == "yes" && comedy_answer == "no"
  puts "My recomendation would be that you watch the movie #{drama}."
  # If they say yes to only comedies, recommend the comedy.
elsif doc_answer == "no" && drama_answer == "no" && comedy_answer == "yes"
  puts "My recomendation would be that you watch the movie #{comedy}."
  #If they answer no to all three, recommend a good book instead.
elsif doc_answer == "no" && drama_answer == "no" && comedy_answer == "no"
  puts "My recomendation would be that you read a book. Perhaps a pop-up."
end
