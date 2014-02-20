require 'csv'

module CyrusApp
  class SpaceParser < Parser
    attr_reader :formated_rows

    def initialize(file)
      super(file, " ")
    end

    def format_row(row)
      clean_row = clean_row(row)
      { "LastName" => clean_row[0],
	"FirstName" => clean_row[1],
        "MiddleInitial" => clean_row[2],
	"Gender" => clean_row[3],
	"FavoriteColor" => clean_row[5],
	"DateOfBirth" => clean_row[4] }
    end
  end
end
