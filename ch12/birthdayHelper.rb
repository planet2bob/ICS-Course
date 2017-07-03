birthdates = {}

File.open("dates.txt", "r") do |f|
    f.each_line do |line|

        name = line.split(", ")[0]
        date = line.split(", ")[1] + " " + line.split(", ")[2]

        date = date.gsub("Jan", "01")
        date = date.gsub("Feb", "02")
        date = date.gsub("Mar", "03")
        date = date.gsub("Apr", "04")
        date = date.gsub("May", "05")
        date = date.gsub("Jun", "06")
        date = date.gsub("Jul", "07")
        date = date.gsub("Aug", "08")
        date = date.gsub("Sep", "09")
        date = date.gsub("Oct", "10")
        date = date.gsub("Nov", "11")
        date = date.gsub("Dec", "12")

        mm = date[0..1].to_i
        dd = date[3..-6].to_i
        yy = Time.now.year.to_i

        birthdates[name] = Time.local(yy, mm, dd)
    end
end

puts "name:"
name = gets.chomp
if birthdates.has_key?(name)
    if Time.now < birthdates[name]
        puts birthdates[name]
    else
        nextBirthdate = birthdates[name].to_s
        nextBirthdate = nextBirthdate.gsub(Time.now.year.to_s, (Time.now.year.to_i + 1).to_s)
        puts nextBirthdate
    end
else
    puts "name not found"
end
