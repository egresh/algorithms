#!/usr/bin/env ruby

# BubbleSort module implementation.
# Takes an unsorted list and returns a new sorted list.

module BubbleSort
  def bubble_sort(list)
    list_copy           = list.dup
    sorted              = false
    last_sorted_element = list.size - 1
    @bubble_sort_comparisons        = 0
    @bubble_sort_swaps              = 0

    until sorted
      sorted = true

      0.upto(last_sorted_element - 1) do |n|
        @bubble_sort_comparisons += 1
        if list_copy[n] > list_copy[n + 1]
          list_copy[n], list_copy[n + 1] = list_copy[n + 1], list_copy[n]
          @bubble_sort_swaps += 1
          sorted = false
        end
      end

      last_sorted_element -= 1
    end

    list_copy
  end

  def bubble_sort_worst_case(elements)
    sum = 0
    (elements-1).downto(1) do |e|
      sum += e
    end
    sum * 2
  end
end

if $PROGRAM_NAME == __FILE__
  items = 20
  to_sort = []
  items.times { to_sort << rand(100) }

  sorted = BubbleSort.sort(to_sort)

  puts "Unsorted: #{to_sort.inspect}"
  puts "Sorted:   #{sorted}"
end
