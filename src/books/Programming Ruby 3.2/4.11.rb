array = ["a", "b", "c"]

enum = array.enum_for

puts enum.next
puts enum.next
puts enum.next

enum = array.to_enum

puts enum.next
puts enum.next
puts enum.next

enum = array.to_enum(:each_with_index)

puts enum.next.inspect
puts enum.next.inspect
puts enum.next.inspect

enum = array.each

puts enum.next
puts enum.next
puts enum.next
