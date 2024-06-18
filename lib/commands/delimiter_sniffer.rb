# frozen_string_literal: true

module Commands
  class DelimiterSniffer
    NoColumnSeparatorFound = Class.new(StandardError)
    EmptyFile = Class.new(StandardError)

    COMMON_DELIMITERS = [
      '","',
      '"|"',
      '";"'
    ].freeze

    def self.call(file)
      new(file:).find_delimiter
    end

    attr_reader :file
    private :file

    def find_delimiter
      raise EmptyFile unless first

      raise NoColumnSeparatorFound unless valid?

      delimiters[0]&.[](0)&.[](1)
    end

    private

    def initialize(file:)
      @file = file
    end

    def valid?
      !delimiters.collect(&:last).reduce(:+).zero?
    end

    # delimiters #=> [["\"|\"", 54], ["\",\"", 0], ["\";\"", 0]]
    # delimiters[0] #=> ["\";\"", 54]
    # delimiters[0][0] #=> "\",\""
    # delimiters[0][0][1] #=> ";"
    def delimiters
      @delimiters ||= COMMON_DELIMITERS.inject({}, &count).sort(&most_found)
    end

    def most_found
      ->(a, b) { b[1] <=> a[1] }
    end

    def count
      lambda { |hash, delimiter|
        hash[delimiter] = first&.count(delimiter)
        hash
      }
    end

    def first
      @first ||= split_file.first
    end

    def split_file
      @split_file ||= file.split("\n")
    end
  end
end
