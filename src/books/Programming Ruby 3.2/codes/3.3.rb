class User
    attr_reader :name, :age, :secret
    def initialize(name, age)
        @name = name
        @age = age
    end
end

john = User.new("John", 20)
puts john.name
puts john.age
puts john.secret

# 1. 'attr_reader' shortcut
# 2. decoupled (accessor method)
