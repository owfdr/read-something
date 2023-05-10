def one_to_ten
    if block_given?
        1.upto(10) do |i|
            yield i
        end
    else
        puts "No block given"
    end
end

one_to_ten
