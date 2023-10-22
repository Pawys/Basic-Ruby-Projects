def substrings(string, dictionary)
  included = Array.new(0)
  sub_strings = Hash.new(0)
  words = string.downcase.split(" ")

  words.each do |word|
    dictionary.each do |dict_word|
      included.push(dict_word) if word.include?(dict_word)
    end
  end
  included.each {|word| sub_strings[word] += 1}
  p sub_strings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
