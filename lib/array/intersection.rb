module Algorithms
  module Array
    def intersection_using_hashes(arr1, arr2)
      arr1_to_hash = {}
      arr1.each { |value| arr1_to_hash[value] = true }

      intersection = []

      arr2.each do |value|
        intersection << value if arr1_to_hash[value]
      end

      intersection
    end

    def intersection_using_arrays(arr1, arr2)
      if arr1.size > arr2.size
        smaller = arr2
        larger = arr1
      else
        smaller = arr1
        larger = arr2
      end

      steps = 0
      intersection = []
      smaller.each_with_index do |s, s_i|
        larger.each_with_index do |l, l_i|
          steps += 1
          if s == l
            intersection << s
            break
          end
        end
      end
      intersection
    end
  end
end

if $0 == __FILE__
  require "benchmark"
  include Algorithms::Array

  a1 = [*1..1000]
  a2 = [*50..500]

  Benchmark.bmbm do |x|
    x.report("intersection_using_hashes") do
      i = intersection_using_hashes(a2, a1)
      puts i.size
    end

    x.report("intersection_using_arrays") do
      i = intersection_using_arrays(a2, a1)
      puts i.size
    end
  end

end
