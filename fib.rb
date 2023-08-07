def fibs(num)
  i = 0
  fib_array = []
  while i < num
    if i == 0
      fib_array.push(0)
    elsif i == 1
      fib_array.push(1)
    else
      fib_array.push(fib_array[i - 1] + fib_array[i - 2])
    end
    i += 1
  end
  fib_array
end

def fibs_rec(num)
  if num == 0
    return [0]
  elsif num == 1
    return [0, 1]
  end

  arr = fibs_rec(num - 1)
  arr.push(arr[-2] + arr[-1])
  return arr[0...num]
end

puts fibs(8)
puts fibs_rec(8)