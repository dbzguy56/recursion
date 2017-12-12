def fibs num
  sum = 0
  arr = []
  num.times do |x|
    if x == 0 || x == 1
      sum = x
    else
      sum = arr[x-2] + arr[x-1]
    end
    arr << sum
    print "#{sum}, "
  end
  puts
end

def fibs_rec(num, arr)
  fibs_rec(num - 1, arr) unless num < 1
  return arr << num if num == 0 || num == 1
  arr << (arr[num - 2] + arr[num - 1])
end

num = 11
arr = []
fibs num
fibs_rec(num - 1, arr)

arr.each do |x|
  print "#{x}, "
end
puts
