module Algorithms
  module Array
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
  end
end
