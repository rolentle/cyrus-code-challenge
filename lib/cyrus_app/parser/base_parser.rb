require 'csv'

module CyrusApp
  class BaseParser
    attr_reader :formatted_rows
    def initialize(file, col_sep)
      @formatted_rows = format_file(file,col_sep)
    end

    def format_file(file, col_sep)
      CSV.read(file, col_sep: col_sep).map { |row| format_row(row) }
    end

    def format_row(row)
    end

    def clean_row(row)
      row.map(&:strip)
    end
  end
end
