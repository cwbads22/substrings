# From the Odin Project:
# Implement a method (#substrings) that takes a word as the first 
# argument and then an array of valid substrings (your dictionary) 
# as the second argument. It should return a hash listing each 
# substring (case insensitive) that was found in the original string 
# and how many times it was found.


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Define a funcrion that takes two elements to compare
def substrings(string, dictionary)
    hash = Hash.new(0)                          # Creates a new Hash with default value of zero.
    string.downcase.split(" ").each do |word|   # Makes the words downcase, splits by "" each word
        dictionary.each { |element| hash[element]+=1 if word.include?(element)}
    end
    hash
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)