# basic-ruby-projects

## Project: Caesar Cipher
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
> `> caesar_cipher("What a string!", 5)`
> `=> "Bmfy f xywnsl!"`

**Quick Tips:**
- You will need to remember how to convert a string into a number.
- Don’t forget to wrap from z to a.
- Don’t forget to keep the same case.
### Run code
`ruby ./caesar_cipher.rb`
### Change results
Changing the argument(s) in `p caesar_cipher('What a string!', 5)`


## Project: Sub Strings
Implement a method `#substrings` that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
> `> dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]`
>
> `=> ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]`
>
> `> substrings("below", dictionary)`
>
> `=> { "below" => 1, "low" => 1 }`

Next, make sure your method can handle multiple words:

> `> substrings("Howdy partner, sit down! How's it going?", dictionary)`
>
> `=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }`

Please note the order of your keys might be different.
**Quick Tips:**
- Recall how to turn strings into arrays and arrays into strings.
### Run code
`ruby ./sub_strings.rb`
### Change results
Changing the first argument in `p substrings("Howdy partner, sit down! How's it going?", dictionary)`
OR
Change the variable's array input `dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]`


## Project: Stock Picker
Implement a method `#stock_picker` that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

> `stock_picker([17,3,6,9,15,8,6,1,10])`
> `=> [1,4]  # for a profit of $15 - $3 == $12`

**Quick Tips**
- You need to buy before you can sell
- Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.
### Run code
`ruby ./stock_picker.rb`
### Change Results
Change the inputs `stocker_picker([17,3,6,9,15,8,6,1,10])`


## Project: Bubble Sort
Build a method `#bubble_sort` that takes an array and returns a sorted array. It must use the bubble sort methodology (using `#sort` would be pretty pointless, wouldn’t it?).
### Run code
`ruby ./bubble_sort.rb`
### Change results
Change the inputs `bubble_sort([4,3,78,2,0,2])`