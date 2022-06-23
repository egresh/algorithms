module Algorithms
  module Array
    def largest_subarray(arr)
      start = 0
      largest_sum = 0
      subarray = []

      while start < arr.size
        stop = start + 1
        while stop < arr.size
          sum = 0
          values = []

          start.upto(stop) do |i|
            sum += arr[i]
            values.push(arr[i])
          end

          if sum > largest_sum
            largest_sum = sum
            subarray = [largest_sum, values]
          end

          stop += 1
        end
        start += 1
      end

      subarray
    end
  end
end

if $0 == __FILE__
  include Algorithms::Array

  # array = [-2,1,-3,4,-1,2,1,-5,4]
  array = [5, 4, -1, 7, 8]
  sum = largest_subarray(array).shift

  puts "Sum: #{sum}"
  puts array.inspect
end
