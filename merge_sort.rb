
def merge_sort(input_array)
  length = input_array.length 
  if length <= 1
    return input_array
  end

  array_left = merge_sort(input_array[0..((input_array.length - 1)/2)])
  array_right = merge_sort(input_array[((input_array.length + 1)/2)..-1])

  i = 0
  while i < length do 
    if array_left[0] < array_right[0]
      input_array[i] = array_left.shift
    else 
      input_array[i] = array_right.shift
    end 
    i += 1

    if array_left.length == 0
      while i < length do
        input_array[i] = array_right.shift
        i += 1
      end
    elsif array_right.length == 0
      while i < length do
        input_array[i] = array_left.shift
        i += 1
      end
    end
  end 
  return input_array
end 