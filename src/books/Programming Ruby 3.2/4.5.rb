def count_to_10
    (1..10).each do |i|
        yield i
    end
end

count_to_10 { |i| puts i }
