require "minitest/autorun"
require_relative "4.1.rb"

text = "Our next task is to calculate word frequencies. To do this, we’ll create a hash object indexed by the words in our list. Each entry in this hash stores the number of times that word occurred. Let’s say we already have read part of the list, and we have seen the word the already. Then we’d have a hash that contained this:"

class TestWordsFromString < MiniTest::Test
    def test_empty_string
        assert_equal [], words_from_string("")
    end

    def test_single_word
        assert_equal ["cat"], words_from_string("cat")
    end

    def test_single_word_with_space
        assert_equal ["cat"], words_from_string(" cat ")
    end

    def test_many_words
        assert_equal ["the", "cat", "sat", "on", "the", "mat"], words_from_string("the cat sat on the mat")
    end

    def test_ignore_punctuation
        assert_equal ["the", "cat's", "mat"], words_from_string("<the!> cat's, -mat-")
    end
end



