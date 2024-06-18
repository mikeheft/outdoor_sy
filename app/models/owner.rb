# typed: strict
# frozen_string_literal: true

class Owner < ApplicationRecord
  extend T::Sig

  has_many :vehicles, dependent: :destroy

  validates :first_name, :last_name, :email, presence: { presence: true }
  validates :email, format: { with: /\A\S+@.+\.\S+\z/ }
  validates :email, uniqueness: true

  sig { returns(String) }
  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
