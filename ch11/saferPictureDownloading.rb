Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'
pic_names = Dir['F:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:"

pic_number = 1
pic_names.each do |name|
    print '.'
    new_name = if pic_number < 10
        "#{batch_name}0#{pic_number}.jpg"
    else
        "#{batch_name}#{pic_number}.jpg"
    end
    if File.exist?(new_name)
        print '!'
        puts "override file #{batch_name}#{pic_number}.jpg ? (y/n)"
        if gets.chomp == "y"
            File.rename name, new_name
            pic_number = pic_number + 1
        end
    else
        File.rename name, new_name
        pic_number = pic_number + 1
    end
end

puts
puts 'Done, cutie!'