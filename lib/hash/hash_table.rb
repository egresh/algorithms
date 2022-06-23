module Algorithms
  module Hash
    class HashTable
      def initialize(size)
        @data = Array.new(size)
      end

      def hash(key)
        hash = 0
        key.size.times do |i|
          hash = (hash + key[i].ord * i) % @data.size
        end
        hash
      end

      def set(key, value)
        @data[hash(key)] = value
      end

      def get(key, value)
        @data[hash(key)]
      end
    end
  end
end

if $0 == __FILE__
  include Algorithms::Hash
  h = HashTable.new(50)

  h.set("grapes", 10000)
  puts h.get("grapes", 10000)
end
