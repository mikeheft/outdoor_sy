# frozen_string_literal: true

module Commands
  # Parses uploaded file in order to create Owners and Vehicles
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
        result = SplitResult.from_row(delimiter, row)
        owner = create_owner(result:)
        create_owner_vehicles(owner:, result:)
      end
    end

    attr_reader :file
    private :file

    private def initialize(file:)
      @file = file
    end

    private def sniff_delimiter
      @sniff_delimiter ||= DelimiterSniffer.call(file)
    end

    private def create_owner(result:)
      Owner.find_or_create_by(email: result.email) do |owner|
        owner.first_name = result.first_name
        owner.last_name = result.last_name
      end
    end

    private def create_owner_vehicles(owner:, result:)
      owner.vehicles.find_or_create_by(name: result.name) do |vehicle|
        vehicle.vehicle_type = result.vehicle_type
        vehicle.length_in_inches = result.length
      end
    end
  end
end
