class User
    def initialize(name, age)
        @name = name
        @age = age
    end

    def name= (name)
        @name = name
    end
end

john = User.new("John", 20)
john.name = "John Doe"

puts john.name

# Update method
