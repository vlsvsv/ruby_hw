array = []
(0..9).each { |i|
  array[i] = rand(10)
}

p array

def rec_sum (array)
  if array.size == 0
    0
  end
  if array.size == 1
    array[0]
  else
    array[1] += array[0]
    rec_sum(array[1..-1])
  end
end

puts rec_sum array