def chime &block
    iterations = Time.new.hour
    iterations -= 12 if iterations > 12
    iterations = 12 if iterations == 0
    while iterations != 0
        block.call
        iterations -= 1
    end
end

chime do
    puts "dong"
end
