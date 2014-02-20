require 'date'
module CyrusApp
  class Sorter
    attr_reader :input
    def initialize(input)
      @input = input
    end

    def sort1
      input.sort do |a,b|
	comp = (a["Gender"] <=> b["Gender"])
	comp.zero? ? (a["LastName"] <=> b["LastName"]) : comp
      end
    end

    def sort2
      input.sort_by do |hash|
	Date.strptime(hash["DateOfBirth"], '%m/%d/%Y')
      end
    end

    def sort3
      input.sort_by { |hash| hash["LastName"] }.reverse
    end
  end
end
