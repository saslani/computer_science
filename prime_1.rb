require 'prime'

puts Prime.take(10) #=> [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
puts ".."
puts Prime.take_while {|p| p < 10 } #=> [2, 3, 5, 7]
puts ".."
puts Prime.prime?(19) #=> true
