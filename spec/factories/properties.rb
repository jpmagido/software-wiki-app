require 'ffaker'

FactoryBot.define do
  factory :property do
    name { FFaker::NameFR.first_name}
    description { FFaker::Book.description }
    association :concept
  end
end