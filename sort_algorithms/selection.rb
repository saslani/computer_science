def sort(array)
  puts "original #{array}"
  return if(array.nil? || array.length < 2)
  puts "sorted #{selection_sort!(array)}"
end

def selection_sort!(keys)
  for i in 0..keys.size-2
    min = i
    for j in i+1..keys.size-1
      min = j if keys[j] < keys[min]
      end
    keys[i], keys[min] = keys[min], keys[i]
  end
  keys
end


sort([3,0,45, 66, 15])
