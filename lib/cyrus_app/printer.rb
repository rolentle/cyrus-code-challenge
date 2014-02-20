module CyrusApp
  class Printer
    attr_reader :input
    def initialize(input)
      @input = input
    end

    def output1
    end

    def print(input)
      input.map do |hash|
	"#{hash['LastName']} #{hash['FirstName']} #{hash['Gender']} #{hash['DateOfBirth']} #{hash['FavoriteColor']}"
      end.join("\n")
    end
  end
end
