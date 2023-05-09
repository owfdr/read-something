class String
    def funny
        self.gsub(/[^aeiou]/, '*')
    end
end

puts "this is a test".funny
