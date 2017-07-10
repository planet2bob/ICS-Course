class Array
    def mix
        def shuffle word
            return recursive_shuffle word, []
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

        return shuffle self
    end
end

class Integer
    def factorial
        input = self.floor
        if input < 1
            return
        end

        i = 1
        aggregate = 1
        while i != input
            aggregate = aggregate * i
            i = i + 1
        end

        return aggregate
    end

    def romanize
        if self < 1
            return
        end
        if self > 3000
            return
        end
        def romanize number
            key = [[1000, 'M'], [500, 'D'], [100, 'C'], [50, 'L'], [10, 'X'], [5, 'V'], [1, 'I']]
            romanNumeral = ''
            iterator = 0
            while iterator < key.length
                romanNumeral << key[iterator][1] * (number / key[iterator][0])
                number = number % key[iterator][0]
                iterator = iterator + 1
            end
            romanNumeral = romanNumeral.gsub('VIIII', 'IX')
            romanNumeral = romanNumeral.gsub('IIII', 'IV')
            romanNumeral = romanNumeral.gsub('LXXXX', 'XC')
            romanNumeral = romanNumeral.gsub('XXXX', 'XL')
            return romanNumeral
        end

        return romanize self
    end
end

#testing

puts "to romanize:"
puts gets.chomp.to_i.romanize
puts "to factorial:"
puts gets.chomp.to_i.factorial
puts "to shuffle:"

term = gets.chomp
words = []

while term != ''
    words.push term
    term = gets.chomp
end

puts words.mix