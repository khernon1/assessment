1. Implement merge sort. What's the bigO and why?

Code below. It is an O(n log n) since each value is compared once.

def merge(arr)
  return arr if arr.length < 2
  
  left_arr = arr.slice(0, arr.length/2)
  right_arr = arr.slice(arr.length/2, arr.length)

  mergeSort(merge(left_arr), merge(right_arr))
end

def mergeSort(left, right)
  merged_arr = []

  until left.empty? || right.empty?
    if left[0] <= right[0]
      merged_arr << left.shift
    else
      merged_arr << right.shift
    end
  end

  merged_arr.concat(left).concat(right)  
end



2. Write a method to reverse a string. (Hint: You cannot use reverse method)

def reverse(str)
  str = str.reverse
end
just kidding

def reverse(str)
  str = str.downcase.split.join.split('') # gets rid of spaces + splits again
  new_str = []

  str.length.times do
    new_str << str.unshift(str[-1]).pop
  end
  
  new_str.join('')
end



3. Write a method to see if string is a palindrome

def palindrome(str)  
  str = str.downcase.split.join # gets rid of spaces
  reversed_str = reverse(str) # previous method
  result = false
  
  result = true if reversed_str == str 
  puts result
end



4. Given the root note in a sorted binary search tree, how do you find the smallest element?

Continuously iterate to the left until you have reached the last node

