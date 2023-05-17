require "csv"

class User
    attr_accessor :name, :age, :email

    def initialize(name, age, email)
        @name = name
        @age = age
        @email = email
    end

    def data
        "#{@name}, #{@age}, #{@email}"
    end
end

class Csv
    def initialize
        @users = []
    end

    def parse(file_name)
        CSV.foreach(file_name, headers: true) do |row|
            @users << User.new(row["name"], row["age"], row["email"])
        end
    end

    def usersTotal
        "Total: #{@users.length}"
    end
end

ARGV.each do |file_name|
    csv = Csv.new
    csv.parse(file_name)
    puts csv.usersTotal
end
