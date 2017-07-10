def log description, &block
    puts "Beginning " + description
    output = block.call
    puts "Ending " + description + "; returned " + output.to_s
end

log "first call" do
    log "second call" do
        log "third call" do
            3
        end
        2
    end
    1
end
