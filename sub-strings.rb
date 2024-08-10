def substrings(string, dictionary)
  substrings_hash = {}
  string_array = string.downcase.split(" ")
  
  dictionary.each do |word|
    string_array.each do |string|
      if string.include?(word)
        if substrings_hash.has_key?(word)
          substrings_hash[word] += 1
        else
          substrings_hash[word] = 1
        end
      end
    end
  end

  substrings_hash
end

dictionary = [
  "below", "down", "go", "going", "horn", "how", "howdy",
  "it", "i", "low", "own", "part", "partner", "sit"
]

substrings("Howdy partner, sit down! How's it going?", dictionary)