# typed: strict
# frozen_string_literal: true

module Commands
  # This class takes strings that represent length and converts them into inches integers.
  # For example, '32 ft 4in' becomes 388. This is to ensure that we have a uniform manner
  # in which to store the data; performing formatting as needed at presentation layers.
  class LengthParser < T::Struct
    extend T::Sig

    const :length, String

    sig { params(length: String).returns(Integer) }
    def self.call(length)
      # In order to maintain a single caller for this file, we want to use private methods.
      # However, Rails does not play well with this pattern w/o the need for calling #send.
      # This is safe as we are not using metaprogramming for this call so no further validation is required
      # that the method exists.
      new(length:).send(:parse)
    end

    sig { returns(Integer) }
    private def parse
      feet = parse_feet
      inches = parse_inches

      feet + inches.to_i
    end

    sig { returns(String) }
    attr_reader :length
    private :length

    sig { returns(T::Array[String]) }
    private def scanned_length
      @scanned_length ||= T.let(length.scan(/\d+|\D+/).flatten, T.nilable(T::Array[String]))
    end

    # Returns feet in inchest
    sig { returns(Integer) }
    private def parse_feet
      feet = scanned_length[0..1]
      parse_feet = feet&.map(&:to_i)&.detect(&:positive?)
      parse_feet.to_i * 12
    end

    sig { returns(T.nilable(Integer)) }
    private def parse_inches
      inches = scanned_length[2..]
      inches&.map(&:to_i)&.detect(&:positive?)
    end
  end
end
