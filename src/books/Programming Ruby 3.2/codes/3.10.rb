class Apple
    public

    def name
        "Apple"
    end

    protected

    def color
        "Red"
    end

    private

    def flavor
        "Sweet"
    end
end

class Banana
    def name
        "Banana"
    end

    def color
        "Yellow"
    end

    def flavor
        "Sweet"
    end

    public :name
    protected :color
    private :flavor
end

class Cherry
    public def name
        "Cherry"
    end

    protected def color
        "Red"
    end

    private def flavor
        "Sour"
    end
end

puts Apple.new
puts Banana.new
puts Cherry.new

# 3 different styles of declaring access
