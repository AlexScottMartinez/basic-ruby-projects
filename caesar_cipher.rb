def caesar_cipher(string, factor)

  # Making two arrays that capture every alphabet letter uppercase and lowercase.
  lowercase_dict = ('a'..'z').to_a
  uppercase_dict = ('A'..'Z').to_a

  # Making an array that splits the given string by every character (spaces are
  #   considered a character).
  init_array = string.split('')


  # Making an array that will go through each element of the init_array and do:
  fin_array = init_array.map do |char|

    # if the element does NOT contains a alphabet character uppercase/lowercase,
    #   then save that character to the fin_array
    if !(('a'..'z').to_a + ('A'..'Z').to_a).include?(char)
      char = char

    # else if the element contains a capital letter, then find what the next character
    #   is going to be next by adding the givrn character by the given factor.
    #   Finally take the module of how many letters in alphabet from that number
    #   from previous sentence. That capital letter will be placed in the fin_array
    elsif char.upcase == char
    indx = (uppercase_dict.index(char.to_s) + factor) % 26
    uppercase_dict[indx]

    # else if the element contains a lowercase letter, then find what thr next character
    #   is going to be next by adding the givrn character by the given factor.
    #   Finally take the module of how many letters in alphabet from that number
    #   from previous sentence. That lowercas letter will be placed in the fin_array
    elsif char.downcase == char
      indx = (lowercase_dict.index(char.to_s) + factor) % 26
      lowercase_dict[indx]
    end
  end
  # In the fin_array make the array into one string
  fin_array.join('')
end

p caesar_cipher('What a string!', 5)
