# typed: strict
# frozen_string_literal: true

class Vehicle < ApplicationRecord
  extend T::Sig

  belongs_to :owner

  validates :name, :vehicle_type, :length_in_inches, presence: true
  validates :name, uniqueness: { scope: :owner_id }

  filterrific(default_filter_params: { sorted_by: "owner_name_asc" }, available_filters: [:sorted_by])

  scope :by_owner_name, -> { includes(:owner).order("owners.last_name, owners.first_name") }
  scope :by_type, -> { order(:vehicle_type) }

  scope :sorted_by, ->(sort_option) {
    direction = /desc$/.match(sort_option) ? "desc" : "asc"

    case sort_option.to_s
    when /^owner_name_/
      includes(:owner).order("owners.last_name #{direction}, owners.first_name #{direction}")
    when /^vehicle_type_/
      order("vehicles.vehicle_type #{direction}")
    else
      raise(ArgumentError, "Invalid sort option: #{sort_option.inspect}")
    end
  }

  sig { returns(T::Array[T::Array[String]]) }
  def self.options_for_sorted_by
    [
      ["Owner Name ASC", "owner_name_asc"],
      ["Owner Name DESC", "owner_name_desc"],
      ["Vehicle Type ASC", "vehicle_type_asc"],
      ["Vehicle Type DESC", "vehicle_type_desc"]
    ]
  end
end
