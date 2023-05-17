class User
    attr_writer :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end
end

john = User.new("John", 20)
john.name = "John Doe"
john.age = 21

p john

# 'attr_writer' shortcut
