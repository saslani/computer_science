def fib(n)
  raise "fib not defined for negative numbers" if n < 0
  num, old = 1, 0
  array = Array.new
  n.times do |x|
    num, old = num + old, num
    array << old
  end
  array.inspect
end

def fib_2(n)
  old_old = 0
  old = 1
  array = Array.new
  n.times do |x|
    array << old
    temp = old_old
    old_old = old
    old += temp
  end
  array.inspect
end

puts (fib 24)

puts (fib_2 24)
