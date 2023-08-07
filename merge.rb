def merge(array)
  if array.length == 1
    return array
  end

  left = merge(array[0...array.length/2])
  right = merge(array[array.length/2...array.length])

  i = 0
  j = 0
  final_array = []

  while i < left.length || j < right.length
    if i == left.length
      final_array.push(right[j])
      j += 1
    elsif j == right.length
      final_array.push(left[i])
      i += 1
    elsif left[i] > right[j]
      final_array.push(right[j])
      j += 1
    else
      final_array.push(left[i])
      i += 1
    end
  end

  return final_array
end

puts merge([3,5,8,4,2,7,1,6])