class Owner < ApplicationRecord
  has_many :vehicles, dependent: :destroy
end
