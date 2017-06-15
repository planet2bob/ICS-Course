term = gets.chomp
words = []

while term != ''
    words.push term
    term = gets.chomp
end

puts words.sort