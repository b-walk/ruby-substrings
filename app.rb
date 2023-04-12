require 'pry-byebug'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    string.downcase!
    binding.pry
    tallies_hash = Hash.new(0)
    dictionary.each do |word|
        tallies_hash[word] += string.scan(/(?=#{word})/).count
    end
    tallies_hash
end

puts "Enter a string:"
string = gets.chomp

puts substrings(string, dictionary)