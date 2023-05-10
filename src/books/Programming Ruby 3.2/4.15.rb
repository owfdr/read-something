triangular = Enumerator.new do |yielder|
    number = 0
    count = 1
    loop do
        number += count
        count += 1
        # yielder.yield number
        yielder << number
    end
end

5.times { print triangular.next, " " }

puts ""

triangular = Enumerator.produce([1, 2]) do | number, count |
    [number + count, count + 1]
end

5.times { print triangular.next.first, " " }

puts ""

triangular.first(5).each { |number, count| print number, " "}
