require 'csv'

module CyrusApp
  class  PipeParser < Parser
    attr_reader :formated_rows

    def format_file(file)
      super(file, "|")
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
