=begin

array_1 = [1, 2, 3, 4, 5]
array_2 = [4, 5, 6, 7, 8]

p array_2.index(array_2.min)
p 0.zero?

test_str = "abc#d##c"
arr = test_str.split("")
p arr
puts arr.join
a = 36
b = 8
=end


=begin
test_arr = [11,56,74,74 , 3, 3,43,77]
res_arr = []
res_arr[5] = 1
p (test_arr.sort {|a, b| b <=> a}).uniq
=end


=begin
hash = Hash.new(:gfd)
hash[:gfd] = 123
print hash
=end

=begin
str =  "sfgs b=324 sdf 3e r=43"
hash = Hash.new
while str.include?('=')
  index = str.index('=')
  if index != 0
    key = str[index - 1]
    value = str[index + 1]
    hash.store(key, value)
    str = str.slice(index+1, str.length)
  end
end
p hash
=end

str =  "sfgs, b=324, sdf, 3e, r=43,"
p str.slice(",")

