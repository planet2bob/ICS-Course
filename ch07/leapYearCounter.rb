puts "starting year:"
year = gets.chomp.to_i
puts "ending year:"
finalYear = gets.chomp.to_i
puts "leapyears in between:"
while year <= finalYear
    if year % 400 == 0
        puts year.to_s
    elsif year%100 != 0 and year%4 == 0
        puts year.to_s
    end
    year = year + 1
end
