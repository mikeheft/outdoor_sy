# typed: true
# frozen_string_literal: true

module Commands
  class SplitResult
    attr_reader :row
    private :row

    def self.from_row(delimiter, row)
      new(delimiter, row)
    end

    def first_name
      row[0]
    end

    def last_name
      row[1]
    end

    def email
      row[2]
    end

    def vehicle_type
      row[3]
    end

    def name
      row[4]
    end

    def length
      parse_length(row[5])
    end

    private def initialize(delimiter, row)
      @row = row.split(delimiter)
    end

    private def parse_length(length_str)
      LengthParser.call(length_str)
    end
  end
end
