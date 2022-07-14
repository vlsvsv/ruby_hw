array_1 = [1, 2, 3, 4, 5]
array_2 = [4, 5, 6, 7, 8]

def merge_arrays(arr1, arr2)
 arr3 = (arr1 | arr2).sort
end


p merge_arrays array_1, array_2


def find_min(arr1)
 temp = arr1.dup
 temp.delete_at(temp.index(temp.min))
 temp
end

p find_min array_1