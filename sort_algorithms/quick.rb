def sort(array)
  puts "original #{array}"
  return if(array.nil? || array.length < 2)
  puts "sorted #{quick_sort(array, 0, array.length-1)}"
end

def quick_sort(array, from, to)
  return array if from >= to

  pivot = partition(array, from, to)
  quick_sort(array, from, pivot-1)
  quick_sort(array, pivot+1, to)
end

def partition(array, from, to)
  x = array[to]
  i = from-1

  for j in from..to-1
    if array[j] <= x
      i += 1
      array[i], array[j] = array[j], array[i]
    end
  end
  array[i+1], array[to] = array[to], array[i+1]
  i+1
end

sort([3,0,45, 66, 15])
