byeCount = 0

while true
    phrase = gets.chomp
    if phrase == phrase.upcase
        phrase = phrase.downcase
        if phrase == "bye"
            byeCount = byeCount + 1
            if byeCount == 3
                puts "BYE!"
                break
            end
            puts "WHAT?"
        else
            byeCount = 0
            year = 1930 + rand(21)
            puts "NO, NOT SINCE " + year.to_s + "!"
        end
    else
        byeCount = 0
        puts "HUH, SPEAK UP, SONNY!"
    end
end
