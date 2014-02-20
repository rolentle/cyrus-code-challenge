require './test/test_helper'

class ParserTest < Minitest::Test

  def test_find_deliminitation_finds_right_parser_for_pipe
    file =  "./test/fixtures/pipe.txt"
    delimniation = CyrusApp::Parser.find_delimitation(file)
    assert_equal "|", delimniation
  end

  def test_find_deliminitation_finds_right_parser_for_comma
    file =  "./test/fixtures/comma.txt"
    delimniation = CyrusApp::Parser.find_delimitation(file)
    assert_equal ",", delimniation
  end

  def test_find_deliminitation_finds_right_parser_for_space
    file =  "./test/fixtures/space.txt"
    delimniation = CyrusApp::Parser.find_delimitation(file)
    assert_equal " ", delimniation
  end

  def test_parser_can_take_in_a_pipe_delimited_file
    file =  "./test/fixtures/pipe.txt"
    rows = CyrusApp::Parser.parse(file)

    hash = { "LastName" => "Smith", "FirstName" => "Steve",
	     "MiddleInitial" => "D",
	     "Gender" => "M", "FavoriteColor" => "Red",
	     "DateOfBirth" => "3-3-1985" }
    assert_equal  hash, rows.first
    assert_equal  3, rows.count
  end

  def test_parser_can_take_in_a_comma_delimited_file
    file =  "./test/fixtures/comma.txt"
    rows = CyrusApp::Parser.parse(file)

    hash = { "LastName" => "Abercrombie", "FirstName" => "Neil",
	     "Gender" => "Male", "FavoriteColor" => "Tan",
	     "DateOfBirth" => "2/13/1943" }
    assert_equal  hash, rows.first
    assert_equal  3, rows.count
  end

  def test_parser_can_take_in_a_space_delimited_file
    file =  "./test/fixtures/space.txt"
    rows = CyrusApp::Parser.parse(file)
    hash = { "LastName" => "Kournikova", "FirstName" => "Anna",
	     "MiddleInitial" => "F","Gender" => "F",
	     "FavoriteColor" => "Red", "DateOfBirth" => "6-3-1975" }
    assert_equal  hash, rows.first
    assert_equal  3, rows.count
  end
end

