FactoryBot.define do
  factory :vehicle do
    name { "MyString" }
    vehicle_type { "MyString" }
    owner
    length_in_inches { 1 }
  end
end
