def shuffle words
    return recursive_shuffle words, []
end

def recursive_shuffle unShuffled, shuffled
    if unShuffled.length == 0
        return shuffled
    else
        newTerm = rand(unShuffled.length)
        shuffled.push(unShuffled[newTerm])
        unShuffled.delete_at(newTerm)
        return recursive_shuffle(unShuffled, shuffled)
    end
end)

#assuming you are running this from the music directory
playlistArray = shuffle Dir.glob("/**/**/*.ogg")
playlistString = playlistArray.join("\n")

File.write('playlist.m3u', playlistString)