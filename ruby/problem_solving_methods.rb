# Release 0
def search_array(arr, int)
  position = 0
  index = nil
  arr.each do |comparison|
    if comparison == int 
      index = position
    else 
      position += 1
    end
  end
  return index
end
arr = [42, 89, 23, 1]
p search_array(arr, 13)
# Release 1
def fib(terms)
  fibonacci = []
  index = 0
  while index < terms
    if index < 2
      fibonacci << index 
    else
      fibonacci << fibonacci[index-2] + fibonacci[index-1]
    end
    index += 1
  end
  return fibonacci
end
# Release 2
integers = [89, 42, 456, 1]
# Define the array sorter
def array_sorter(integers)
  # Loop until nothing can be swapped
  integers.each do
    index = 0
    while index < integers.length - 1
      # Compare the two values to see if value of our current position is greater than value of  the next position
      if integers[index] > integers[index+1]
        # Swap values if condition is true
        integers[index], integers[index+1] = integers[index+1], integers[index]
        swapped = true
      end
      # Move to the next position in the array
      index += 1
    end
    # Break the loop until nothing swapped
  end
end
array_sorter(integers)