def substrings word, dict
  #return a hash listing each substring that was foundin the original string and how many times
  count_hash = {}
  word.downcase!
  dict.each do |substr|
    count = word.scan(substr).length
    if count > 0
      count_hash[substr] = count
    end
  end
  puts count_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)

# scan goes through the word every time the program is called, so it's O(n)?