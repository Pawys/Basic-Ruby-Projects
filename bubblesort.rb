def bubble_sort(array)
  swapped = true
  until swapped == false do
    i = 0
    swapped = false
    while i < array.length - 1 do 
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
      i += 1
    end
  end
  return array
end
