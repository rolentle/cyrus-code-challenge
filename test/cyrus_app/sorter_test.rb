require './test/test_helper'

class SorterTest < Minitest::Test
  attr_reader :sorter, :hash1, :hash2, :hash3

  def setup
    @hash1 = {"LastName" => "Smith", "FirstName" => "Steve",
	     "Gender" => "Male", "DateOfBirth" => "3/3/1985",
	     "FavoriteColor" => "Red" }
    @hash2 = { "LastName" => "Abercrombie", "FirstName" => "Neil",
	      "Gender" => "Male", "FavoriteColor" => "Tan",
	      "DateOfBirth" => "2/13/1943" }

    @hash3 = { "LastName" => "Kournikova", "FirstName" => "Anna",
	      "Gender" => "Female", "FavoriteColor" => "Red",
	      "DateOfBirth" => "6/3/1975" }

    input = [hash1, hash2, hash3]

    @sorter = CyrusApp::Sorter.new(input)
  end

  def test_sort_data_by_sort1
    output =  [hash3, hash2, hash1]
    assert_equal output, sorter.sort1
  end

  def test_sort_data_by_sort2
    output = [hash2, hash3, hash1]
    assert_equal output, sorter.sort2
  end

  def test_sort_data_by_sort3
    output = [hash1, hash3, hash2]
    assert_equal output, sorter.sort3
  end
end
