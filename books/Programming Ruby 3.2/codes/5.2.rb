class Sample
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def destroy! (name)
        @name = "destroyed"
    end

    def sample?
        @name == "sample"
    end

    def name=(new_name)
        @name = new_name
    end

    def + (other)
        Sample.new(name + other.name)
    end
end

sample = Sample.new("sample")

puts sample.destroy!("destroyed")
puts sample.sample?
puts sample.name = "test "

sample = sample + Sample.new("sample")
puts sample.name



