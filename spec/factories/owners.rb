# typed: true
FactoryBot.define do
  factory :owner do
    first_name { "MyString" }
    last_name { "MyString" }
    email { Faker::Internet.email }
  end
end
