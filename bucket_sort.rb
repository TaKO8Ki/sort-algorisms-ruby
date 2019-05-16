
# 1から100までの数のソート
def bucket_sort(array: nil, from: nil, to: nil)
  buckets = {}
  [*(from..to)].each{|number| buckets[number.to_s] = 0}

  array.each do |number|
    buckets[number.to_s] += 1
  end 

  result = [] 
  not_empty_buckets = buckets.to_a.select{|element| element[1] > 0}
  not_empty_buckets.each do |bucket|
    result += Array.new(bucket[1], bucket[0].to_i)
  end 
  return result
end 