dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
dictionary_vowels = %w[a e i o u y]

def substrings(string, dictionary)
    string.downcase!
    tallies_hash = Hash.new(0)
    dictionary.each do |word|
        tallies_hash[word] += string.scan(/(?=#{word})/).count
    end
    tallies_hash
end

puts "Enter a string:"
string = gets.chomp

puts "Odin Dictionary: #{substrings(string, dictionary)}"
puts "Vowels: #{substrings(string, dictionary_vowels)}"