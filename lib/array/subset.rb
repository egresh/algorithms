module Algorithms
  module Array
    def subset_using_array(arr1, arr2)
      if arr1.size > arr2.size
        smaller = arr2
        larger = arr1
      else
        smaller = arr1
        larger = arr2
      end

      steps = 0
      smaller.each_with_index do |s, i_s|
        found = false

        larger.each_with_index do |l, i_l|
          if larger[i_l] == smaller[i_s]
            found = true
            break
          end
        end

        return false if found == false
      end
      true
    end

    def subset_using_hash(arr1, arr2)
      if arr1.size > arr2.size
        smaller = arr2
        larger = arr1
      else
        smaller = arr1
        larger = arr2
      end

      indexes = {}
      larger.each { |item| indexes.store(item, true) }

      found = true
      smaller.each do |value|
        next if indexes[value]
        found = false
      end

      found == true
    end
  end
end

if $0 == __FILE__
  require 'benchmark'
  include Algorithms::Array

  a1 = [*1..1000]
  a2 = [*50..500]

  Benchmark.bmbm do |x|
    x.report('subset_using_array') do
      subset_using_array(a1, a2)
    end

    x.report('subset_using_hash') do
      subset_using_hash(a1, a2)
    end
  end
end
