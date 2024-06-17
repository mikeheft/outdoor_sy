module Commands
  class LengthParser
    def self.call(length)
      new(length:).parse
    end

    def parse
      feet = parse_feet
      inches = parse_inches

      feet + inches.to_i
    end

    attr_reader :length
    private :length

    private def initialize(length:)
      @length = length.scan(/\d+|\D+/)
    end

    # Returns feet in inchest
    private def parse_feet
      @feet ||= length[0..1]
      @parse_feet ||= @feet.select(&select_integer)
      @parse_feet.first.to_i * 12
    end

    private def parse_inches
      @inches ||= length[2..-1]
      @parse_inches ||= @inches&.select(&select_integer)&.first
    end

    private def select_integer
      ->(int_string) { int_string.to_i > 0 }
    end
  end
end