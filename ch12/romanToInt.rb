def toInt numeral
    numeral = numeral.upcase

    numeral.each_char do |i|
        if not "MDCLXVI".include? i
            return "not valid numeral"
        end
    end

    key = [[1000, 'M'], [500, 'D'], [100, 'C'], [50, 'L'], [10, 'X'], [5, 'V'], [1, 'I']]

    numeral = numeral.gsub('IX', 'VIIII')
    numeral = numeral.gsub('IV', 'IIII')
    numeral = numeral.gsub('XC', 'LXXXX')
    numeral = numeral.gsub('XL', 'XXXX')
    numeral = numeral.gsub('CM', 'DCCCC')
    numeral = numeral.gsub('CD', 'CCCC')

    iterator = 0
    tally = 0
    while iterator != 7
        tally = tally + numeral.count(key[iterator][1]) * key[iterator][0]
        iterator = iterator + 1
    end

    return tally
end

puts "enter numeral:"
puts toInt gets.chomp
