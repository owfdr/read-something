class User
    def initialize(name, age)
        @name = name
        @age = age
    end

    def identification
        "#{@name}, #{@age}"
    end

    def identification=(string)
        @name = string.split(", ").first.to_s
        @age = string.split(", ").last.to_i
    end
end

john = User.new("John", 20)
john.identification = "John Doe, 21"

puts john.identification

# Attribute are just method
