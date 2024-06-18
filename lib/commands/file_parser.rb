# frozen_string_literal: true

module Commands
  class Result
    attr_reader :delimiter, :row

    def initialize(delimiter, row)
      @delimter = delimiter
      @row = row
    end

    def first_name
      split_row[0]
    end

    def last_name
      split_row[1]
    end

    def email
      split_row[2]
    end

    def vehicle_type
      split_row[3]
    end

    def name
      split_row[4]
    end

    def length
      @length ||= parse_length(split_row[5])
    end

    private def split_row
      @split_row ||= row.split(delimiter)
    end
  end

  # Parses the file contents in order to create Owners and Vehicles.
  class FileParser
    def self.call(file)
      # In order to maintain a single caller for this file, we want to use private methods.
      # However, Rails does not play well with this pattern w/o the need for calling #send.
      # This is safe as we are not using metaprogramming for this call so no further validation is required
      # that the method exists.
      new(file:).send(:parse)
    end

    private def parse
      delimiter = sniff_delimiter

      rows = file.split("\n")
      rows.each do |row|
        split_result = Result.new(delimiter, row)
        owner = create_owner(first_name: split_result.first_name, last_name: split_result.last_name,
                             email: split_result.email)

        create_owner_vehicles(owner:, name: split_result.name, vehicle_type: split_result.vehicle_type,
                              length: split_result.length)
      end
    end

    attr_reader :file
    private :file

    private def initialize(file:)
      @file = file
    end

    private def parse_length(length_str)
      LengthParser.call(length_str)
    end

    private def sniff_delimiter
      @sniff_delimiter ||= DelimiterSniffer.call(file)
    end

    private def create_owner(first_name:, last_name:, email:)
      Owner.find_or_create_by(email:) do |owner|
        owner.first_name = first_name
        owner.last_name = last_name
      end
    end

    private def create_owner_vehicles(owner:, name:, vehicle_type:, length:)
      owner.vehicles.find_or_create_by(name:) do |vehicle|
        vehicle.name = name
        vehicle.vehicle_type = vehicle_type
        vehicle.length_in_inches = length
      end
    end
  end
end
