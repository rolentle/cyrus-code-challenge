require './test/test_helper'

class ParserTest < Minitest::Test
  attr_reader :parser
  def setup
    file =  "./test/fixtures/pipe.txt"
    @parser = CyrusApp::Parser.new(file)
  end

  def test_parser_can_take_in_a_pipe_delimited_file
    hash = { "LastName" => "Smith", "FirstName" => "Steve",
	     "MiddleInitial" => "D", "Gender" => "M",
	     "FavoriteColor" => "Red", "DateOfBirth" => "3-3-1985" }
    assert_equal  hash, parser.formated_rows.first
    assert_equal  3, parser.formated_rows.count
  end
end

