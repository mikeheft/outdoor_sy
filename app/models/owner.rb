class Owner < ApplicationRecord
  has_many :vehicles, dependent: :destroy

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
