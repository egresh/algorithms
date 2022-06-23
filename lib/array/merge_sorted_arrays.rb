module Algorithms
  module Array
    def merge_sorted_arrays(arr1, arr2)
      sorted = arr1

      arr2.each do |to_compare|
        count = 0
        inserted = false

        while count <= sorted.size - 1
          if to_compare <= sorted[count]
            sorted[count, 0] = to_compare
            inserted = true
            break
          end
          count += 1
        end

        unless inserted
          sorted.push(to_compare)
        end
      end

      sorted
    end
  end
end

if $0 == __FILE__
  include Algorithms::Array

  sorted = merge_sorted_arrays([0, 3, 4, 31], [4, 6, 30])
  puts sorted
end
