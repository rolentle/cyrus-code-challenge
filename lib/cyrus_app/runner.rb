require './lib/cyrus_app/runner'
require './lib/cyrus_app/sorter'

module CyrusApp
  class Runner
    attr_reader :hashes
    def initialize(files)
      @hashes = setup(files)
    end

    def output1
      hashes = Sorter.new(@hashes).sort1
      Printer.new.print(hashes)
    end

    def output2
      hashes = Sorter.new(@hashes).sort2
      Printer.new.print(hashes)
    end

    private

    def setup(files)
      parsed_hashes = parse(files)
      format_hashes(parsed_hashes)
    end


    def parse(files)
      files.map { |file| Parser.parse(file) }.flatten
    end

    def format_hashes(hashes)
      hashes.map { |hash| Formatter.standardize(hash) }
    end
  end
end
