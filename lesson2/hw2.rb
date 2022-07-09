# frozen_string_literal: true
#
# Задание 1
def bin_or(n)
  sum = 0
  (0..n).each { |i|
    sum |= i
  }
  sum
end

p bin_or 32


# Задание 2

test_str = "" # По всем тестовым строкам метод отработал

def del_before(str)
  temp_arr = str.split("") # Создал на всякий случай для сохранения исходной строки
  while temp_arr.include?('#')
    index = temp_arr.index('#')
    if index != 0
      temp_arr.delete_at(index)
      temp_arr.delete_at(index - 1)
    else
      temp_arr.delete_at(index)
    end
  end
  temp_arr.join("") # Тут to_s не отрабатывал. Почему?
end

p del_before test_str
