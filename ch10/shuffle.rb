def shuffle words
    return recursive_shuffle words, []
end

def recursive_shuffle unShuffled, shuffled
    if unShuffled.length == 0
        return shuffled
    else
        newTerm = rand(unShuffled.length)
        shuffled.push(unShuffled[newTerm])
        unShuffled.delete_at(newTerm)
        return recursive_shuffle(unShuffled, shuffled)
    end
end

term = gets.chomp
words = []

while term != ''
    words.push term
    term = gets.chomp
end

puts shuffle words