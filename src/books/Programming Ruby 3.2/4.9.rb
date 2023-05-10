hello = -> (name) { puts "Hello, #{name}!" }
hello.call "Matz"

hello = lambda { |name| puts "Hello, #{name}!" }
hello.call "Matz"

hello = proc { |name| puts "Hello, #{name}!" }
hello.call

hello = Proc.new { |name| puts "Hello, #{name}!" }
hello.call "Matz"
