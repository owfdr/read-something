class User
    def initialize(name, age)
        @name = name
        @age = age
    end

    def to_s
        "What? You are violating user's privacy!"
    end
end

john = User.new("John", 20)

puts john           # What? You are violating user's privacy!
puts john.inspect   #<User:0x0000000104889208 @name="John", @age=20>
p john              #<User:0x0000000104889208 @name="John", @age=20>

# 1. Override default implementation of 'to_s'
# 2. Inspect the difference between 'puts' and 'p'
