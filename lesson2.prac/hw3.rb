# Задание №1
string = "a=1, b=2, c=3, d=4"

def str_to_h(str)
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
  hash
end
# Функция сырая, берет один левый символ от знака равно, как ключ, один правый, как значение, и помещает в хэш.
p str_to_h string # Для тестовых данных проходит


# Задание №2

def arr_ranks(array)
  sort_arr = (array.sort {|a, b| b <=> a})#.uniq # Сортировка по убыванию
  ranks_arr = []
  (0..array.size - 1).each do  |i|
    ranks_arr[i] = sort_arr.index(array[i]) + 1 # Берем каждый элемент из исходного массива и находим его в отсортированном массиве. Ранг = индекс + 1
  end
  ranks_arr
end
# Сначала сделал задачу под сохранение рангового номера. В 1 строчке функции закоментил .uniq, так ранг сохраняется.
p arr_ranks [3,3,3,3,3,5,1]