text = <<~TEXT

TEXT

text.each_line do |line|
    code, description = line.match(/\b([\S]+)\s+([A-Z].*)/)&.captures
    puts "- `#{code}` #{description.downcase}" if code && description
end
