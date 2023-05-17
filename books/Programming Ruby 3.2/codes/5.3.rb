class User
    def self.about
        "create a new user"
    end
end

puts User.about

oscar = User.new

def oscar.hello(name)
    "Hello #{name}"
end

puts oscar.hello("Jake")

