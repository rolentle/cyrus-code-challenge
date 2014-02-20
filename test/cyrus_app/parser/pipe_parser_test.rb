require './test/test_helper'

class PipeParserTest < Minitest::Test
  attr_reader :parser
  def setup
    file =  "./test/fixtures/pipe.txt"
    @parser = CyrusApp::PipeParser.new(file)
  end

  def test_parser_can_take_in_a_pipe_delimited_file
    hash = { "LastName" => "Smith", "FirstName" => "Steve",
	     "MiddleInitial" => "D",
	     "Gender" => "M", "FavoriteColor" => "Red",
	     "DateOfBirth" => "3-3-1985" }
    assert_equal  hash, parser.formatted_rows.first
    assert_equal  3, parser.formatted_rows.count
  end
end

