class Owner < ApplicationRecord
  has_many :vehicles, dependent: :destroy

  validates :first_name, :last_name, :email, presence: true
  validates :email, format: { with: /\A\S+@.+\.\S+\z/ }

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
