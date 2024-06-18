# frozen_string_literal: true

module Commands
  class FileParser
    def self.call(file)
      new(file:).parse
    end

    def parse
      delimiter = sniff_delimiter

      rows = file.split("\n")
      rows.each do |row|
        split_row = row.split(delimiter)

        first_name = split_row[0]
        last_name = split_row[1]
        email = split_row[2]
        vehicle_type = split_row[3]
        name = split_row[4]
        length = parse_length(split_row[5])

        owner = create_owner(first_name:, last_name:, email:)

        create_owner_vehicles(owner:, name:, vehicle_type:, length:)
      end
    end

    attr_reader :file
    private :file

    private

    def initialize(file:)
      @file = file
    end

    def parse_length(length_str)
      LengthParser.call(length_str)
    end

    def sniff_delimiter
      @sniff_delimiter ||= DelimiterSniffer.call(file)
    end

    def create_owner(first_name:, last_name:, email:)
      Owner.find_or_create_by(email:) do |owner|
        owner.first_name = first_name
        owner.last_name = last_name
      end
    end

    def create_owner_vehicles(owner:, name:, vehicle_type:, length:)
      owner.vehicles.find_or_create_by(name:) do |vehicle|
        vehicle.name = name
        vehicle.vehicle_type = vehicle_type
        vehicle.length_in_inches = length
      end
    end
  end
end
