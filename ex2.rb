#Let's take a different approach to film recommendations: create the same variables containing your potential
# film recommendations and then ask the user to rate their appreciation for 1.
#documentaries 2. dramas 3. comedies on a scale from one to five. If they rate documentaries four or higher,
#recommend the documentary. If they rate documentaries 3 or lower but both comedies and dramas 4 or higher,
# recommend the dramedy. If they rate only dramas 4 or higher, recommend the drama.
# If they rate just comedies 4 or higher, recommend the comedy. Otherwise, recommend a good book.

documentary = "Cowspericy"
drama       = "Moonlight"
comedy      = "The Big Sick"
dramedy     = "Battle of the Sexes"

puts "On a scale of 1 - 5, how much do you like documentaries?"
doc_rating = gets.to_i
puts "On a scale of 1 - 5, how much do you like dramas?"
drama_rating = gets.to_i
puts "On a scale of 1 - 5, how much do you like comedies?"
comedy_rating = gets.to_i

#If they rate documentaries four or higher, recommend the documentary                           #checked code- worked
if doc_rating >= 4
  puts "I recomend you watch the documentary #{documentary}"
  #If they rate documentaries 3 or lower but both comedies and dramas 4 or higher,
  # recommend the dramedy.                                                                                 #code works
elsif doc_rating <= 3 && comedy_rating >= 4 && drama_rating >= 4
  puts "I recomend you watch the dramedy #{dramedy}"
  #If they rate only dramas 4 or higher, recommend the drama.                                                  #code works
elsif  doc_rating <=3 && comedy_rating <=3 && drama_rating >= 4
  puts "I recomend you watch the dramedy #{drama}"
  # If they rate just comedies 4 or higher, recommend the comedy. Otherwise, recommend a good book.
elsif  doc_rating <=3 && comedy_rating <=4 && drama_rating >= 3                                               #code works
  puts "I recomend you watch the comedy #{comedy}"                                                  #code works
else  doc_rating <=3 && comedy_rating <=3 && drama_rating <= 3
  puts "I recomend you read a good book."
end
