require 'csv'

module CyrusApp
  class Parser
    attr_reader :formated_rows
    def initialize(file)
      @formated_rows = format_file(file)
    end

    def format_file(file)
      CSV.read(file, col_sep: "|").map { |row| format_row(row) }
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

    def clean_row(row)
      row.map(&:strip)
    end
  end
end
