$indentation = 0

def log description, &block
    $indentation += 1
    line = "Beginning " + description
    puts line.prepend("    " * $indentation)
    output = block.call
    line = "Ending " + description + "; returned " + output.to_s
    puts line.prepend("    " * $indentation)
    $indentation -= 1
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
