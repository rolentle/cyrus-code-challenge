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
      input.sort do |a,b|
	comp = (to_date(a["DateOfBirth"]) <=> to_date(b["DateOfBirth"]))
	comp.zero? ? (a["LastName"] <=> b["LastName"]) : comp
      end
    end

    def sort3
      input.sort_by { |hash| hash["LastName"] }.reverse
    end

    private
    def to_date(date)
      Date.strptime(date, '%m/%d/%Y')
    end
  end
end
