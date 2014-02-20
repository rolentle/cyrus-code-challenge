require './lib/cyrus_app/runner'
require './lib/cyrus_app/sorter'

module CyrusApp
  class Runner
    attr_reader :hashes
    def initialize(files = ["./test/fixtures/pipe.txt", "./test/fixtures/comma.txt", "./test/fixtures/space.txt"])
      @hashes = setup(files)
    end

    def output1
      output(1)
    end

    def output2
      output(2)
    end

    def output3
      output(3)
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

    def output(i)
      hashes = Sorter.new(@hashes).send("sort#{i}".to_sym)
      Printer.new.print(hashes)
    end
  end
end
