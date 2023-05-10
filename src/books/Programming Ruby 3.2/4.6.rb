puts [1, 2, 3, 4].reduce(0) { |sum, each| sum + each }
puts [1, 2, 3, 4].reduce(:+)
puts [1, 2, 3, 4].sum

puts [1, 2, 3, 4].reduce(1) { |product, each| product * each }
puts [1, 2, 3, 4].reduce(:*)
puts [1, 2, 3, 4].product([1, 2]).inspect
