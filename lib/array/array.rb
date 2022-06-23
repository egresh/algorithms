def find_duplicates(arr)
  tmp_hash = Hash.new(0)

  arr.each do |a|
    if !tmp_hash.has_key?(a)
      tmp_hash[a] = 1
    else
      return true
    end
  end
  false
end

puts find_duplicates([1,2,3,3,5,6])
def largest_subarray(arr)
  start = 0
  largest_sum = 0
  subarray = []

  while start < arr.size
    stop = start + 1
    while stop < arr.size
      sum = 0
      sub_array = arr[start, stop]
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

# array = [-2,1,-3,4,-1,2,1,-5,4]
array = [5, 4, -1, 7, 8]
sum = largest_subarray(array).shift

puts "Sum: #{sum}"
puts array.inspect
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

sorted = merge_sorted_arrays([0, 3, 4, 31], [4, 6, 30])
module ReverseString
  def reverse(str)
    if !str.is_a?(String) || str.size < 2
      raise "Illegal String"
    end

    reversed = ""
    until str.empty?
      val = str[-1]
      reversed << val
      str.chop!
    end

    reversed

    # Alternate
    # reversed = ""
    # (str.length - 1).downto(0) do |i|
    #   reversed << str[i]
    # end
    # reversed
  end
end
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

puts rotate_array([1, 2, 3, 4, 5, 6, 7], 6)
def swap_zeros(arr)
  done = false

  while !done

    swapped = true

    iteration = 0
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

puts swap_zeros([0,0]).inspect
def two_sum(arr, target)
  start = 1
  arr.each_with_index do |_, i|
    start.upto(arr.size - 1) do |j|
      return [i, j] if arr[i] + arr[j] == target
    end
    start += 1
  end
end

puts two_sum([4, 7, 11, 15, 6, 3], 9)
