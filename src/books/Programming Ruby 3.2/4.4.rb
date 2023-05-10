puts "the cat sat on the mat"
    .downcase.scan(/[\w']+/)
    .tap { |word| p word }
    .tally
    .tap { |count| p count }
    .sort_by { |word, count| -count }
    .map { |word, count| "#{word}: #{count}" }
