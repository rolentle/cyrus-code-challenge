require './lib/cyrus_app/parser/base_parser'

module CyrusApp
  class  PipeParser < BaseParser

    def initialize(file)
      super(file,"|")
    end


    def format_row(row)
      clean_row = clean_row(row)
      { "LastName" => clean_row[0],
	"FirstName" => clean_row[1],
	"MiddleInitial" => clean_row[2],
	"Gender" => clean_row[3],
	"FavoriteColor" => clean_row[4],
	"DateOfBirth" => clean_row[5] }
    end
  end
end
