module Algorithms
  module Array
    def rotate_array(arr, step)
      new = []
      (arr.size - 1).downto(0) do |i|
        if i + step > arr.size - 1
          distance_from_end = (arr.size - 1) - i
          move_from_start = step - distance_from_end - 1

          new[move_from_start] = arr[i]
        else
          new_index = i + step
          new[new_index] = arr[i]
        end
      end
      new
    end
  end
end

if $0 == __FILE__
  include Algorithms::Array
  puts rotate_array([1, 2, 3, 4, 5, 6, 7], 6)
end
