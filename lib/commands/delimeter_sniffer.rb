# typed: strict
# frozen_string_literal: true

module Commands
  class DelimeterSniffer
    NoColumnSeparatorFound = Class.new(StandardError)
    EmptyFile = Class.new(StandardError)

    extend T::Sig

    COMMON_DELIMITERS = T.let([
      '","',
      '"|"',
      '";"'
    ].freeze, T::Array[String])

    sig { params(path: String).void }
    private def initialize(path:)
      @path = T.let(path, String)
    end

    sig { params(path: String).returns(T.nilable(String)) }
    def self.find_delimeter(path)
      new(path:).find_delimeter
    end

    sig { returns(T.nilable(String)) }
    def find_delimeter
      raise EmptyFile unless first

      raise NoColumnSeparatorFound unless valid?

      delimiters[0]&.[](0)&.[](1)
    end

    sig { returns(T::Boolean) }
    private def valid?
      !delimiters.collect(&:last).reduce(:+).zero?
    end

    # delimiters #=> [["\"|\"", 54], ["\",\"", 0], ["\";\"", 0]]
    # delimiters[0] #=> ["\";\"", 54]
    # delimiters[0][0] #=> "\",\""
    # delimiters[0][0][1] #=> ";"
    sig { returns(T::Array[String]) }
    private def delimiters
      @delimiters ||= T.let(COMMON_DELIMITERS.inject({}, &count).sort(&most_found),
                            T.nilable(T::Array[T::Array[T.untyped]]))
    end

    sig { returns(T.proc.params(arg0: String, arg1: String).returns(String)) }
    private def most_found
      ->(a, b) { b[1] <=> a[1] }
    end

    sig { returns(T.proc.params(arg0: T::Hash[String, Integer], arg1: String).returns(Integer)) }
    private def count
      ->(hash, delimiter) {
        hash[delimiter] = first&.count(delimiter)
        hash
      }
    end

    sig { returns(T.nilable(String)) }
    private def first
      @first ||= T.let(file.first, T.nilable(String))
    end

    sig { returns(File) }
    private def file
      @file ||= T.let(File.open(@path), T.nilable(File))
    end
  end
end
