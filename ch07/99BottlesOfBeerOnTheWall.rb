i = 99
while i != 1
    puts i.to_s + " bottles of beer on the wall, " + i.to_s + " bottles of beer."
    i = i - 1
    puts "take one down and pass it around, " + i.to_s + " bottles of beer on the wall."
end
puts "1 bottle of beer on the wall, 1 bottle of beer,\ntake one down and pass it around, no more bottles of beer on the wall.\nno more bottles of beer on the wall, no more bottles of beer,\ngo to the store and buy some more, 99 bottles of beer on the wall."