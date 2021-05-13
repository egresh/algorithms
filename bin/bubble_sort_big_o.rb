$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))

require 'bubble_sort'
include BubbleSort

@comparisons = 0
@swaps       = 0

array_size = 5
10.times do |t|
  a = []
  1.upto(array_size) { a << rand(100) }
  worst_case = bubble_sort_worst_case(array_size)
  sorted = bubble_sort(a)
  puts "elements: #{array_size}".ljust(20) +
       "comparisons: #{@comparisons}".ljust(25) +
       "swaps: #{@swaps}".ljust(20) +
       "worst_case: #{worst_case}".ljust(25) +
       "actual: #{@comparisons + @swaps}"

  array_size *= 2
end
