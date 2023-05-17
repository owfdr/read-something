def say(something, good, exclamation=something.length > 2)
    "#{something}, #{good}#{exclamation ? '!' : '.'}"
end

puts say("hello", "goodbye")
