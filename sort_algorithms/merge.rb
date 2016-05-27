def sort(array)
  puts "original: #{array}"
  puts "sorted: #{merge_sort(array)}"
end

def merge_sort(list)
  return list if list.nil? or list.size < 2
  mid   = list.size / 2
  left  = list[0, mid]
  right = list[mid, list.size]
  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

sort([3,0,45, 66, 15])
