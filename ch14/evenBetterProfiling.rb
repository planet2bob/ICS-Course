$profiling_status = false
#change to true if you want the puts

def profile block_description, &block
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds" if $profiling_status
end

