require './test/test_helper'

class ParserTest < Minitest::Test
  def test_parser_can_take_in_a_file
    file =  "./test/fixtures/pipe.txt"
    parser = CyrusApp::Parser.new(file)
    assert  parser.text.include?  "Smith | Steve | D | M | Red | 3-3-1985"
  end
end
