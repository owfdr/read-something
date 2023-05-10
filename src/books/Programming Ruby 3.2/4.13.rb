result = []
"dog".each_char.each_with_index { |item, index| result << [item, index] }
puts result.inspect

result = []
"dog".each_char.with_index { |item, index| result << [item, index] }
puts result.inspect

result = "dog".each_char.with_index.map { |item, index| [item, index] }
puts result.inspect

