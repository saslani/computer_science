def linear(array,value)
   for i in array
       puts "found index is: #{array.index(i)}" if i == value;
   end
   return false
end


linear([1, 3, 6, 8, 12, 14, 15, 20, 142].sort, 14)
