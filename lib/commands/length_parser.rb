# typed: true
# frozen_string_literal: true

module Commands
  # This class takes strings that represent length and converts them into inches integers.
  # For example, '32 ft 4in' becomes 388. This is to ensure that we have a uniform manner
  # in which to store the data; performing formatting as needed at presentation layers.
  class LengthParser
    def self.call(length)
      # In order to maintain a single caller for this file, we want to use private methods.
      # However, Rails does not play well with this pattern w/o the need for calling #send.
      # This is safe as we are not using metaprogramming for this call so no further validation is required
      # that the method exists.
      new(length:).send(:parse)
    end

    private def parse
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
      @parse_feet ||= @feet.select(&positive_int?)
      @parse_feet.first.to_i * 12
    end

    private def parse_inches
      @inches ||= length[2..]
      @parse_inches ||= @inches&.select(&positive_int?)&.first
    end

    private def positive_int?
      ->(int_string) { int_string.to_i.positive? }
    end
  end
end
