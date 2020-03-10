require "ex48/parser.rb"
require "test/unit"

class TestParser < Test::Unit::TestCase

    def test_sentence()
        result = parse_sentence([['verb', 'run'], ['direction', 'north']])
        assert_equal(result.subject, 'player')
        assert_equal(result.verb, 'run')
        assert_equal(result.object, 'north')
    end

end