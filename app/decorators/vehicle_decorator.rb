# typed: strict
# frozen_string_literal: true

class VehicleDecorator < ApplicationDecorator
  extend T::Sig
  delegate_all

  sig { returns(String) }
  def owner_name
    object.owner.full_name
  end

  sig { returns(String) }
  def owner_email
    object.owner.email
  end

  sig { returns(String) }
  def formatted_length
    length_in_inches = object.length_in_inches
    inches = length_in_inches % 12
    feet = (length_in_inches - inches) / 12

    string = "#{feet} ft"
    return string unless inches.positive?

    string + " #{inches} in"
  end

  sig { returns(String) }
  def vehicle_type
    object.vehicle_type.capitalize
  end
end
