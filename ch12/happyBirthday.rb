puts "enter date of birth\nenter year (yyyy):"
yyyy = gets.chomp
puts "enter month (mm):"
mm = gets.chomp
puts "enter day (dd):"
dd = gets.chomp

birthdate = Time.local(yyyy, mm, dd)
currentDate = Time.new

#should be right 99% of the time
years = (currentDate.to_i - birthdate.to_i) / (365.25 * 24 * 60 * 60)

i = 0
while i != years.floor
    puts "SPANK!"
    i = i+1
end
