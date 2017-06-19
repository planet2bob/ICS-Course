def romanize number
    key = [[1000, 'M'], [500, 'D'], [100, 'C'], [50, 'L'], [10, 'X'], [5, 'V'], [1, 'I']]
    romanNumeral = ''
    iterator = 0
    while iterator < key.length
        romanNumeral << key[iterator][1] * (number / key[iterator][0])
        number = number % key[iterator][0]
        iterator = iterator + 1
    end
    return romanNumeral
end

puts 'number to romanize:'
puts romanize gets.chomp.to_i