def binary(array, val, left = 0, right = nil)
  right = array.size - 1 unless right
  mid = (left + right) / 2

  return nil if left > right

  if val == array[mid]
    puts "found index: #{mid}"
    return mid
  elsif val > array[mid]
    binary(array, val, mid + 1, right)
  else
    binary(array, val, left, mid - 1)
  end
end


binary([1, 3, 6, 8, 12, 14, 15, 20, 142].sort, 14)
