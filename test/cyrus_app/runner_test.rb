require './test/test_helper'

class RunnnerTest < Minitest::Test
  attr_reader :runner
  def setup
    files = ["./test/fixtures/pipe.txt", "./test/fixtures/comma.txt", "./test/fixtures/space.txt"]
    @runner = CyrusApp::Runner.new(files)
  end

  def test_output1_returns_examples
    output = "Hingis Martina Female 4/2/1979 Green\nKelly Sue Female 7/12/1959 Pink\nKournikova Anna Female 6/3/1975 Red\nSeles Monica Female 12/2/1973 Black\nAbercrombie Neil Male 2/13/1943 Tan\nBishop Timothy Male 4/23/1967 Yellow\nBonk Radek Male 6/3/1975 Green\nBouillon Francis Male 6/3/1975 Blue\nSmith Steve Male 3/3/1985 Red"

    assert_equal output, runner.output1
  end

  def test_output2_returns_examples
    output = "Abercrombie Neil Male 2/13/1943 Tan\nKelly Sue Female 7/12/1959 Pink\nBishop Timothy Male 4/23/1967 Yellow\nSeles Monica Female 12/2/1973 Black\nBonk Radek Male 6/3/1975 Green\nBouillon Francis Male 6/3/1975 Blue\nKournikova Anna Female 6/3/1975 Red\nHingis Martina Female 4/2/1979 Green\nSmith Steve Male 3/3/1985 Red"

    assert_equal output, runner.output2
  end

  def test_output3_returns_examples
    output = "Smith Steve Male 3/3/1985 Red\nSeles Monica Female 12/2/1973 Black\nKournikova Anna Female 6/3/1975 Red\nKelly Sue Female 7/12/1959 Pink\nHingis Martina Female 4/2/1979 Green\nBouillon Francis Male 6/3/1975 Blue\nBonk Radek Male 6/3/1975 Green\nBishop Timothy Male 4/23/1967 Yellow\nAbercrombie Neil Male 2/13/1943 Tan"

    assert_equal output, runner.output3
  end
end
