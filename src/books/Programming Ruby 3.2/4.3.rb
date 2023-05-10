require_relative "4.1.rb"

words = words_from_string("the cat sat on the mat")
counts = words.tally

puts counts.inspect
