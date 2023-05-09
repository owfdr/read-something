class User
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end
end

john = User.new("John", 20)
john.name = "John Doe"
john.age = 21

puts john.name
puts john.age

# combined 'attr_accessor' shortcut
