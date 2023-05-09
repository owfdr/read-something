class User
    def initialize(name, age)
        @name = name
        @age = age
    end

    def name
        @name
    end

    def age
        @age
    end
end

john = User.new("John", 20)
puts john.name
puts john.age

# Accessor method
