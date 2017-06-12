i = 99
while i != 1
    puts i.to_s + " bottles of beer on the wall, " + i.to_s + " bottles of beer."
    i = i - 1
    if i == 1
        puts "take one down and pass it around, " + i.to_s + " bottle of beer on the wall."
    else
        puts "take one down and pass it around, " + i.to_s + " bottles of beer on the wall."
    end
end
puts "1 bottle of beer on the wall, 1 bottle of beer,"
puts "take one down and pass it around, no more bottles of beer on the wall."
puts "no more bottles of beer on the wall, no more bottles of beer,"
puts "go to the store and buy some more, 99 bottles of beer on the wall."