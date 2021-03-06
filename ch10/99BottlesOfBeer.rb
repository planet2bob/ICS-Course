def english_number number
    if number < 0 # No negative numbers.
        return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
        return 'zero'
    end
# No more special cases! No more returns!
    num_string = '' # This is the string we will return.
    ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
# "left" is how much of the number
# we still have left to write out.
# "write" is the part we are
# writing out right now.
# write and left...get it? :)
    left = number

    write = left/100 # How many hundreds left?
    left = left - write*100 # Subtract off those hundreds.
    if write > 0
# Now here's the recursion:
        hundreds = english_number write
        num_string = num_string + hundreds + ' hundred'
        if left > 0
# So we don't write 'two hundredfifty-one'...
        num_string = num_string + ' '
        end
    end
    write = left/10 # How many tens left?
    left = left - write*10 # Subtract off those tens.
        if write > 0
            if ((write == 1) and (left > 0))
# Since we can't write "tenty-two" instead of
# "twelve", we have to make a special exception
# for these
                num_string = num_string + teenagers[left-1]
# The "-1" is because teenagers[3] is
# 'fourteen', not 'thirteen'.
# Since we took care of the digit in the
# ones place already, we have nothing left to write.
                left = 0
            else
                num_string = num_string + tens_place[write-1]
# The "-1" is because tens_place[3] is
# 'forty', not 'thirty'.
        end
        if left > 0
# So we don't write 'sixtyfour'...
            num_string = num_string + '-'
        end
    end
    write = left # How many ones left to write out?
    left = 0 # Subtract off those ones.
    if write > 0
        num_string = num_string + ones_place[write-1]
# The "-1" is because ones_place[3] is
# 'four', not 'three'.
    end
# Now we just return "num_string"...
num_string
end

i = 99
while i != 1
    puts english_number(i)[0].chr.upcase + english_number(i)[1..-1] + " bottles of beer on the wall, " + english_number(i) + " bottles of beer."
    i = i - 1
    if i == 1
        puts "take one down and pass it around, " + english_number(i) + " bottle of beer on the wall."
    else
        puts "take one down and pass it around, " + english_number(i) + " bottles of beer on the wall."
    end
end
puts "one bottle of beer on the wall, one bottle of beer,"
puts "take one down and pass it around, no more bottles of beer on the wall."
puts "no more bottles of beer on the wall, no more bottles of beer,"
puts "go to the store and buy some more, ninety-nine bottles of beer on the wall."