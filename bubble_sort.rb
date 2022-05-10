def bubble_sort(array)
  sorted = true
  while sorted do
    sorted = false
    array.each_with_index do |number, index|
      if array[index + 1].nil?
        break
      end
      if array[index + 1] < number && index < (array.length - 1)
        original_number = number
        array[index] = array[index + 1]
        array[index + 1] = original_number
        sorted = true
      end
    end
  end
  array
end

p bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]