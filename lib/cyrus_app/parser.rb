require 'csv'
require './lib/cyrus_app/parser/pipe_parser'
require './lib/cyrus_app/parser/comma_parser'
require './lib/cyrus_app/parser/space_parser'
require './lib/cyrus_app/parser/base_parser'

module CyrusApp
  class Parser
    def self.parse(file)
      key = find_delimitation(file)
      parser_type = delimniations[key]
      parser_type.new(file).formatted_rows
    end

    def self.find_delimitation(file)
      first_row = IO.readlines(file)[0]
      delimniations.keys.find do |delimniation|
        first_row.include? delimniation
      end
    end

    def self.delimniations
      {"|" => PipeParser,
       "," => CommaParser,
       " " => SpaceParser}
    end
  end
end
