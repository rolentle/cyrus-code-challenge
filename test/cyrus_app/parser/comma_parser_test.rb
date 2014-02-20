require './test/test_helper'

class CommaParserTest < Minitest::Test
  attr_reader :parser
  def setup
    file =  "./test/fixtures/comma.txt"
    @parser = CyrusApp::CommaParser.new(file)
  end

  def test_parser_can_take_in_a_comma_delimited_file
    hash = { "LastName" => "Abercrombie", "FirstName" => "Neil",
	     "Gender" => "Male", "FavoriteColor" => "Tan",
	     "DateOfBirth" => "2/13/1943" }
    assert_equal  hash, parser.formatted_rows.first
    assert_equal  3, parser.formatted_rows.count
  end
end

