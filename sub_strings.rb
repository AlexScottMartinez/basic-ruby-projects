def substrings(string, dict)
  # Creating a dictionary-like collection of unique keys and a default value of 0
  answer = Hash.new(0)

  # Making every character in the given string lower case
  lowercase_string = string.downcase

  # iterate through every element of the given dictionary and do:
  dict.each do |word|
    # Will check whether the given string is in the dictionary. Then save the length of the match
    matches = lowercase_string.scan(word).length
    # Will save the word and the number of matches in the dictionary-like collection, unless
    #   the length of the match between the given string and dictionary word is 0.
    answer[word] = matches unless matches == 0
    end
    # Return the answer
    return answer
end

dictionary =
[
  "below",
  "down",
  "go",
  "going",
  "horn",
  "how",
  "howdy",
  "it",
  "i",
  "low",
  "own",
  "part",
  "partner",
  "sit"
]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
