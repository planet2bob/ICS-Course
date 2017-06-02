puts "what is your favorite number?"
numberOriginal = gets.chomp.to_i
numberBetter = (numberOriginal+1).to_s
puts "since it is larger, perhaps "+ numberBetter + " would be a better favorite number."