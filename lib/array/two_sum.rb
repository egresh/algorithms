module Algorithms
  module Array
    def two_sum(arr, target)
      start = 1
      arr.each_with_index do |_, i|
        start.upto(arr.size - 1) do |j|
          return [i, j] if arr[i] + arr[j] == target
        end
        start += 1
      end
    end
  end
end

if $0 == __FILE__
  include Algorithms::Array
  puts two_sum([4, 7, 11, 15, 6, 3], 9)
end
