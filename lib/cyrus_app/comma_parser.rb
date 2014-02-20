require 'csv'

module CyrusApp
  class CommaParser < Parser
    attr_reader :formated_rows

    def initialize(file)
      super(file)
    end

    def format_file(file)
      CSV.read(file, col_sep: ",").map { |row| format_row(row) }
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
