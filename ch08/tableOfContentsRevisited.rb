contents = [['chapter 1: getting started', ' page 1'], ['chapter 2: numbers', ' page 9'], ['chapter 3: letters', ' page 13']]
line = 0
width = 52

puts "table of contents".center(width) + "\n"
while line < contents.length
    puts contents[line][0].ljust(width/2) + contents[line][1].rjust(width/2)
    line = line + 1
end