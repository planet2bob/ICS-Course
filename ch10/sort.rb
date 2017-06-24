def sort some_array
    return recursive_sort some_array, []
end

def recursive_sort unsorted, sorted
    if unsorted.length == 0
        return sorted
    else
        newUnsorted = []
        while unsorted.length >= 2
            if unsorted[0] < unsorted[1]
                higherIndex = 1
            else
                   higherIndex = 0
            end
            newUnsorted.push(unsorted[higherIndex])
            unsorted.delete_at(higherIndex)
        end
        sorted.push(unsorted[0])
        return recursive_sort(newUnsorted, sorted)
    end
end

term = gets.chomp
words = []

while term != ''
    words.push term
    term = gets.chomp
end

puts sort words