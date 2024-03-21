def bubble_sort(array)
  # Is the array sorted correctly, ascending order?
  sorted = false

  # The code within this loop with continue to execute until sorted = true
  until sorted
    # for when the array is sorted properly, it will exit the until loop
    sorted = true
    # Goes through the array n - 1 [n = number of elements]
    (array.length - 1).times do |i|
      # if statement, objective is to see if of two indexes being evaluated, the left index is bigger
      #   than the right index. If so, then the indexes will switch places.
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
  end
  array
end


p bubble_sort([4,3,78,2,0,2])
