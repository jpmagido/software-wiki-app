require 'ffaker'

FactoryBot.define do
  factory :property do
    name { FFaker::NameFR.first_name}
    description { FFaker::Book.description }
    association :concept
  end

  factory :software_concept do
    association :concept
    association :software
  end

  factory :software do
    name { FFaker::Book.name }
    description { FFaker::Book.description }
  end

  factory :concept do
    name { FFaker::Name.name }
    short_text { FFaker::Book.name }
    description { FFaker::Book.description }
  end
end
