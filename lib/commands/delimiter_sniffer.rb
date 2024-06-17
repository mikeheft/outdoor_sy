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

    def self.call(path)
      new(path:).find_delimiter
    end

    attr_reader :path
    private :path

    private def initialize(path:)
      @path = path
    end

    def find_delimiter
      raise EmptyFile unless first

      raise NoColumnSeparatorFound unless valid?

      delimiters[0]&.[](0)&.[](1)
    end

    private def valid?
      !delimiters.collect(&:last).reduce(:+).zero?
    end

    # delimiters #=> [["\"|\"", 54], ["\",\"", 0], ["\";\"", 0]]
    # delimiters[0] #=> ["\";\"", 54]
    # delimiters[0][0] #=> "\",\""
    # delimiters[0][0][1] #=> ";"
    private def delimiters
      @delimiters ||= COMMON_DELIMITERS.inject({}, &count).sort(&most_found)
    end

    private def most_found
      ->(a, b) { b[1] <=> a[1] }
    end

    private def count
      lambda { |hash, delimiter|
        hash[delimiter] = first&.count(delimiter)
        hash
      }
    end

    private def first
      @first ||= file.first
    end

    private def file
      @file ||= File.open(path)
    end
  end
end
