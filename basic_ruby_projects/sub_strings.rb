# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

def substrings(phrase, array)
    phrase.split(' ').reduce(Hash.new(0)) do |acc, curr|
        array.each { |word| acc[word] += 1 if curr.downcase.include?(word)}
        acc
    end
end

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# p substrings("Howdy partner, sit down! How's it going?", dictionary)

