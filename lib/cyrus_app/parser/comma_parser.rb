require './lib/cyrus_app/parser/base_parser'

module CyrusApp
  class CommaParser < BaseParser

    def initialize(file)
      super(file, ",")
    end

    def format_row(row)
      clean_row = clean_row(row)
      { "LastName" => clean_row[0],
	"FirstName" => clean_row[1],
	"Gender" => clean_row[2],
	"FavoriteColor" => clean_row[3],
	"DateOfBirth" => clean_row[4] }
    end
  end
end
