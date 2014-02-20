require './test/test_helper'

class PrinterTest < Minitest::Test
  attr_reader :printer, :input

  def setup
    hash1 = {"LastName" => "Smith", "FirstName" => "Steve",
	     "Gender" => "Male", "DateOfBirth" => "3/3/1985",
	     "FavoriteColor" => "Red" }
    hash2 = { "LastName" => "Abercrombie", "FirstName" => "Neil",
	      "Gender" => "Male", "FavoriteColor" => "Tan",
	      "DateOfBirth" => "2/13/1943" }

    hash3 = { "LastName" => "Kournikova", "FirstName" => "Anna",
	      "Gender" => "Female", "FavoriteColor" => "Red",
	      "DateOfBirth" => "6/3/1975" }

    @input = [hash1, hash2, hash3]

    @printer = CyrusApp::Printer.new
  end

  def test_print_single_line
    hash1 = {"LastName" => "Smith", "FirstName" => "Steve",
	     "Gender" => "Male", "DateOfBirth" => "3/3/1985",
	     "FavoriteColor" => "Red" }
    line = "Smith Steve Male 3/3/1985 Red"
    assert_equal line, printer.print_line(hash1)
  end

  def test_print_unsorted
    output = "Smith Steve Male 3/3/1985 Red\nAbercrombie Neil Male 2/13/1943 Tan\nKournikova Anna Female 6/3/1975 Red"
    assert_equal output, printer.print(input)
  end
end
