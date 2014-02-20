require './test/test_helper'

class FormatterTest < Minitest::Test
  def test_it_formats_gender
    male = CyrusApp::Formatter.format_gender("Male")
    assert_equal "Male", male

    male = CyrusApp::Formatter.format_gender("M")
    assert_equal "Male", male

    female = CyrusApp::Formatter.format_gender("Female")
    assert_equal "Female", female

    female = CyrusApp::Formatter.format_gender("F")
    assert_equal "Female", female
  end

  def test_it_formats_dob
    dob = CyrusApp::Formatter.format_dob("3-3-1985")
    assert_equal "3/3/1985", dob
    dob = CyrusApp::Formatter.format_dob("2/13/1943")
    assert_equal "2/13/1943", dob
  end

  def test_it_standardize_hash_for_pipe
    hash = { "LastName" => "Smith", "FirstName" => "Steve",
	     "MiddleInitial" => "D",
	     "Gender" => "M", "FavoriteColor" => "Red",
	     "DateOfBirth" => "3-3-1985" }
    standard_hash = {"LastName" => "Smith", "FirstName" => "Steve",
                     "Gender" => "Male", "DateOfBirth" => "3/3/1985",
		     "FavoriteColor" => "Red" }
    output_hash = CyrusApp::Formatter.standardize(hash)
    assert_equal standard_hash, output_hash
  end

  def test_it_standardize_hash_for_comma
    hash = { "LastName" => "Abercrombie", "FirstName" => "Neil",
	     "Gender" => "Male", "FavoriteColor" => "Tan",
	     "DateOfBirth" => "2/13/1943" }
    standard_hash = { "LastName" => "Abercrombie", "FirstName" => "Neil",
		      "Gender" => "Male", "FavoriteColor" => "Tan",
		      "DateOfBirth" => "2/13/1943" }

    output_hash = CyrusApp::Formatter.standardize(hash)
    assert_equal standard_hash, output_hash
  end

  def test_it_standardize_hash_for_space
    hash = { "LastName" => "Kournikova", "FirstName" => "Anna",
	     "MiddleInitial" => "F","Gender" => "F",
	     "FavoriteColor" => "Red", "DateOfBirth" => "6-3-1975" }
    standard_hash = { "LastName" => "Kournikova", "FirstName" => "Anna",
		      "Gender" => "Female", "FavoriteColor" => "Red",
		      "DateOfBirth" => "6/3/1975" }

    output_hash = CyrusApp::Formatter.standardize(hash)
    assert_equal standard_hash, output_hash
  end
end
