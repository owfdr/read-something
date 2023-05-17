words = ["apple", "berry", "cherry"].to_enum
emojis = ["🍎", "🫐", "🍒"].to_enum

loop do
    puts "#{words.next} #{emojis.next}"
end
