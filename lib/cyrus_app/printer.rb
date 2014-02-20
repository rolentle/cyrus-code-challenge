module CyrusApp
  class Printer
    def initialize
    end

    def print(input)
      input.map { |hash| print_line(hash) }.join("\n")
    end

    def print_line(hash)
	"#{hash['LastName']} #{hash['FirstName']} #{hash['Gender']} #{hash['DateOfBirth']} #{hash['FavoriteColor']}"
    end
  end
end
