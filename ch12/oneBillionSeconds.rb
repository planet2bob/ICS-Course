puts "enter date of birth\nenter year (yyyy):"
yyyy = gets.chomp
puts "enter month (mm):"
mm = gets.chomp
puts "enter day (dd):"
dd = gets.chomp
puts "enter hour (24h):"
hour = gets.chomp
puts "enter minute:"
min = gets.chomp

birthdate = Time.local(yyyy, mm, dd, hour, min)
puts "you will be 1b seconds old at "
puts birthdate + 1000000000
