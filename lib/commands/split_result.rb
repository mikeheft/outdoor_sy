# typed: strict
# frozen_string_literal: true

module Commands
  class SplitResult < T::Struct
    extend T::Sig

    const :delimiter, String
    const :row, String

    sig { params(delimiter: String, row: String).returns(SplitResult) }
    def self.from_row(delimiter, row)
      new(delimiter:, row:)
    end

    sig { returns(String) }
    def first_name
      split_row.fetch(0)
    end

    sig { returns(String) }
    def last_name
      split_row.fetch(1)
    end

    sig { returns(String) }
    def email
      split_row.fetch(2)
    end

    sig { returns(String) }
    def vehicle_type
      split_row.fetch(3)
    end

    sig { returns(String) }
    def name
      split_row.fetch(4)
    end

    sig { returns(Integer) }
    def length
      parse_length(split_row.fetch(5))
    end

    sig { params(length_str: String).returns(Integer) }
    private def parse_length(length_str)
      LengthParser.call(length_str)
    end

    sig { returns(T::Array[String]) }
    private def split_row
      @split_row ||= T.let(row.split(delimiter), T.nilable(T::Array[String]))
    end
  end
end
