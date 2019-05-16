
def bubble_sort(array)
  l = array.length

  for i in 1..l
    for j in 1..(l - i)
      array[j - 1], array[j] = array[j], array[j - 1] if array[j - 1] > array[j]
    end 
  end 
  return array
end 