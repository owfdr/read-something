def create_counter
    value = 0
    -> { value += 1 }
end

counter = create_counter
puts counter.call
puts counter.call

