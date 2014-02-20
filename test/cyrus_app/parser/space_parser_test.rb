require './test/test_helper'

class SpaceParserTest < Minitest::Test
  attr_reader :parser
  def setup
    file =  "./test/fixtures/space.txt"
    @parser = CyrusApp::SpaceParser.new(file)
  end

  def test_parser_can_take_in_a_pipe_delimited_file
    hash = { "LastName" => "Kournikova", "FirstName" => "Anna",
	     "MiddleInitial" => "F","Gender" => "F",
	     "FavoriteColor" => "Red", "DateOfBirth" => "6-3-1975" }
    assert_equal  hash, parser.formatted_rows.first
    assert_equal  3, parser.formatted_rows.count
  end
end

