#!/usr/bin/env ruby
# Given an array, determine if there's a duplicate entry and how many
# steps it took

$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))

require 'utils'
include Utils

puts 'Checking for a duplicate entry in a random array...'

array = generate_array

steps = 0
found = catch(:found) do
          0.upto(array.size - 1) do |i|
            0.upto(array.size - 1) do |j|
              steps += 1
              if array[i] == array[j] and i != j
                puts "Found duplicate at indexes: #{i} and #{j}, value: #{array[i]}"
                throw(:found, true)
              end
            end
          end
          false
        end

puts array.inspect
puts "Steps: #{steps}"

found ? nil : puts('Found? False')
