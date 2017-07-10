#i'd rather not reformat the pdf code

#dragon code

puts "name of dragon:"
drag = Dragon.new gets.chomp.to_s

exit = false
while exit = false
    puts "command:"
    command = gets.chomp.to_s.downcase

    if command == "feed"
        drag.feed
    elsif command == "pet"
        drag.pet
    elsif command == "walk"
        drag.walk
    elsif command == "put to bed"
        drag.put_to_bed
    elsif command == "toss"
        drag.toss
    elsif command == "quit"
        exit = true
    end
end
