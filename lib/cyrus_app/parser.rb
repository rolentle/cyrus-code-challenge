module CyrusApp
  class Parser
    attr_reader :text
    def initialize(data)
      @text = File.read(data)
    end
  end
end
