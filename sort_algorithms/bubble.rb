def sort(array)
  puts "original: #{array}"
  puts "sorted: #{sort!(array.clone)}"
end

def sort!(keys)
  0.upto(keys.size-1) do |i|
    (keys.size-1).downto(i+1) do |j|
      (keys[j], keys[j-1] = keys[j-1], keys[j]) if keys[j] < keys[j-1]
    end
  end
  keys
end


sort([3,0,45, 66, 15])
