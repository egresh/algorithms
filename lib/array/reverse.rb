module Algorithms
  module Array
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
end
