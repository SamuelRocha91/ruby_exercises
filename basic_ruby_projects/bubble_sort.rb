# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology

def bubble_sort(array)
    max_index = array.length - 1
    (0..max_index - 1).each do |index|
      (index + 1..max_index).each do |index_2|
        number_1 = array[index]
        number_2 = array[index_2]
        if number_1 > number_2
          intermediate = number_1
          array[index] = number_2
          array[index_2] = intermediate
        end
      end
    end
    array
end

p bubble_sort([4,3,78,2,0,2])