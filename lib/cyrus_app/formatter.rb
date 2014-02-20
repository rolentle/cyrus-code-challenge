module CyrusApp
  class Formatter
    def self.standardize(hash)
      hash["Gender"] = format_gender(hash["Gender"])
      hash["DateOfBirth"] = format_dob(hash["DateOfBirth"])
      hash.delete("MiddleInitial")
      hash
    end

    def self.format_gender(gender)
      genders[gender[0]]
    end

    def self.genders
      { "M" => "Male",
	"F" => "Female" }
    end

    def self.format_dob(dob)
      dob.gsub("-","/")
    end
  end
end
