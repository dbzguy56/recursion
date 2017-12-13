def merge_sort(arr)
  if arr.length != 1
    #puts arr.length
    l = merge_sort(arr[0...arr.length/2])
    r = merge_sort(arr[arr.length/2..-1])
    comparisons = l.length + r.length
    arr = []
    comparisons.times do
      if l[0] == nil
        arr.push(r[0])
      elsif r[0] == nil
        arr.push(l[0])
      else
        if l[0] < r[0]
          arr.push(l[0])
          l.shift
        else
          arr.push(r[0])
          r.shift
        end
      end
    end
  end
  arr
end

arr = [8,4,21,6,35,2,4,9]

arr = merge_sort(arr)

puts "Final arr: #{arr}"
