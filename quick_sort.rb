
def quick_sort(input_array)
    return input_array if input_array.size < 2
    pivot = input_array.shift
    input_array.partition{|num| num < pivot}.map{|array| quick_sort(array)}.insert(1,pivot).flatten
end


