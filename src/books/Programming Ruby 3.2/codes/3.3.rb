class User
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end
end

john = User.new("John", 20)
puts john.name
puts john.age

# 'attr_accessor' shortcut
