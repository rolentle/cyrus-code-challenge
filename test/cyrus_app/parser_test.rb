require './test/test_helper'

class ParserTest < Minitest::Test
  attr_reader :parser
  def setup
    file =  "./test/fixtures/pipe.txt"
    @parser = CyrusApp::Parser.new(file, "|")
  end

  def test_parser_can_clean_a_row
    row  = ["Smith "," Steve "," D "," M "," Red "," 3-3-1985"]
    array = ["Smith", "Steve", "D", "M", "Red", "3-3-1985"]
    assert_equal  array, parser.clean_row(row)
  end
end

