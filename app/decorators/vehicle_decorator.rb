# frozen_string_literal: true

class VehicleDecorator < ApplicationDecorator
  delegate_all

  def owner_name
    object.owner.full_name
  end

  def owner_email
    object.owner.email
  end

  def formatted_length
    length_in_inches = object.length_in_inches
    inches = length_in_inches % 12
    feet = (length_in_inches - inches) / 12

    string = "#{feet} ft"
    return string unless inches.positive?

    string + " #{inches} in"
  end

  def vehicle_type
    object.vehicle_type.capitalize
  end
end
