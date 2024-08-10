def substrings(string, dictionary)
  substrings_hash = {}
  
  dictionary.each do |word|
    if string.include?(word)
      if substrings_hash.has_key?(word)
        substrings_hash[word] += 1
      else
        substrings_hash[word] = 1
      end
    end
  end

  substrings_hash
end

dictionary = [
  "below", "down", "go", "going", "horn",
  "how", "howdy", "it", "i", "low", "own",
  "part", "partner", "sit"
]

p substrings("below", dictionary)