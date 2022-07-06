array_test = []

(0..9).each { |i|
  array_test[i] = rand(10)
}

p array_test

def rec_sum (array)
  if array.size == 0
    return 0
  end
  if array.size == 1
    array[0]
  else
    array[1] += array[0]
    rec_sum(array[1..-1])
  end
end

puts rec_sum array_test