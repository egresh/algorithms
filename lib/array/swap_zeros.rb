module Algorithms
  module Array
    def swap_zeros(arr)
      done = false

      until done

        swapped = true

        while swapped
          (0...arr.size - 1).each_with_index do |val, index|
            if arr[index] == 0 && arr[index + 1] != 0
              arr[index], arr[index + 1] = arr[index + 1], arr[index]
              swapped = true
            else
              swapped = false
            end
          end
        end

        done = true
      end

      arr
    end
  end
end

if $0 == __FILE__
  include Algorithms::Array
  puts swap_zeros([0, 0]).inspect
  puts swap_zeros([3, 0, 2, 2, 4, 0, 12, 6]).inspect
end
